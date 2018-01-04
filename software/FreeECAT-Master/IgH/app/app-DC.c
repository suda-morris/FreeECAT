/**
 * EtherCAT Master demo based on IgH, with distributted clock.
 */
#include <errno.h>
#include <signal.h>
#include <stdio.h>
#include <string.h>
#include <sys/resource.h>
#include <sys/time.h>
#include <sys/types.h>
#include <unistd.h>
#include <time.h>
#include <sys/mman.h>
#include <malloc.h>
#include "ecrt.h"

#define FREQUENCY 1000              /* run cyclic task 1000 times per second */
#define CLOCK_TO_USE CLOCK_REALTIME /* use RTC clock as reference */

#define MEASURE_TIMING /* measuring dc performence */

#define NSEC_PER_SEC (1000000000L)           /* 1s = 10e9ns */
#define PERIOD_NS (NSEC_PER_SEC / FREQUENCY) /* period time in nano second format */

#define DIFF_NS(A, B) (((B).tv_sec - (A).tv_sec) * NSEC_PER_SEC + (B).tv_nsec - (A).tv_nsec) /* compute B-A to nano seconds*/
#define TIMESPEC2NS(T) ((uint64_t)(T).tv_sec * NSEC_PER_SEC + (T).tv_nsec)                   /* transfer linux timespec into nano seconds */

static ec_master_t *master = NULL;          /* ethercat master, manage slaves, domains and io */
static ec_master_state_t master_state = {}; /* restore the current state of master */

static ec_domain_t *domain = NULL;          /* handles process data of a certain group of slaves */
static ec_domain_state_t domain_state = {}; /* restore the latest state of domain */

static uint8_t *domain_pd = NULL; /* domain process date pointer */

#define XMC_Slave0Pos 0, 0 /* slave alias, slave position */
#define XMC_Slave1Pos 0, 1 /* slave alias, slave position */

#define Infineon_XMC4800 0x0000034E, 0x00000000 /* vendor ID, product code */

static uint16_t sensor_temp0; /* sensor data from slave1 */
static uint16_t sensor_temp1; /* sensor data from slave2 */

static unsigned int off_sensors_in0; /* offsets for PDO entries: sensor input0 */
static unsigned int off_leds_out0;   /* offsets for PDO entries: leds output0 */
static unsigned int off_sensors_in1; /* offsets for PDO entries: sensor input1 */
static unsigned int off_leds_out1;   /* offsets for PDO entries: leds output1 */

static unsigned int counter = 0;                  /* local counter for 1s */
static unsigned int blink = 0;                    /* led control value */
static unsigned int sync_ref_counter = 0;         /* counter for sync to reference clock */
const struct timespec cycletime = {0, PERIOD_NS}; /* period in linux timespec format */

//////////////////Following parameters are result of command: [ethercat cstruct]//////////////////
/* Master 0, Slave 0
 * Vendor ID:       0x0000034e
 * Product code:    0x00000000
 * Revision number: 0x00000000
 */
/* PDO entry configuration information */
static ec_pdo_entry_info_t xmc_pdo_entries[] = {
    /* {entry index, entry subindex, size of entry in bit} */
    {0x7000, 0x01, 1},  /* LED1 */
    {0x7000, 0x02, 1},  /* LED2 */
    {0x7000, 0x03, 1},  /* LED3 */
    {0x7000, 0x04, 1},  /* LED4 */
    {0x7000, 0x05, 1},  /* LED5 */
    {0x7000, 0x06, 1},  /* LED6 */
    {0x7000, 0x07, 1},  /* LED7 */
    {0x7000, 0x08, 1},  /* LED8 */
    {0x6000, 0x01, 16}, /* Sensor1 */
};

/* PDO configuration information */
static ec_pdo_info_t xmc_pdos[] = {
    /* PDO index, number of PDO entries, array of PDO entries */
    {0x1600, 8, xmc_pdo_entries + 0}, /* LED process data mapping */
    {0x1a00, 1, xmc_pdo_entries + 8}, /* Sensor process data mapping */
};

/* Sync manager configuration information */
static ec_sync_info_t xmc_syncs[] = {
    /* sync manager index, sync manager direction, number of PDOs, array of PDOs to assign, watchdog mode */
    {0, EC_DIR_OUTPUT, 0, NULL, EC_WD_DISABLE},
    {1, EC_DIR_INPUT, 0, NULL, EC_WD_DISABLE},
    {2, EC_DIR_OUTPUT, 1, xmc_pdos + 0, EC_WD_ENABLE},
    {3, EC_DIR_INPUT, 1, xmc_pdos + 1, EC_WD_DISABLE},
    {0xff}};

static inline struct timespec timespec_add(struct timespec time1, struct timespec time2)
{
    struct timespec result;

    if ((time1.tv_nsec + time2.tv_nsec) >= NSEC_PER_SEC)
    {
        result.tv_sec = time1.tv_sec + time2.tv_sec + 1;
        result.tv_nsec = time1.tv_nsec + time2.tv_nsec - NSEC_PER_SEC;
    }
    else
    {
        result.tv_sec = time1.tv_sec + time2.tv_sec;
        result.tv_nsec = time1.tv_nsec + time2.tv_nsec;
    }

    return result;
}

static void check_domain_state(void)
{
    ec_domain_state_t ds;

    /* read the state of a domain, process data exchange can be monitored in realtime */
    ecrt_domain_state(domain, &ds);
    /* check if change happened in working counter */
    if (ds.working_counter != domain_state.working_counter)
    {
        printf("domain: WC %u.\n", ds.working_counter);
    }
    /* Working counter interpretation */
    if (ds.wc_state != domain_state.wc_state)
    {
        printf("domain: State %u.\n", ds.wc_state);
    }
    /* restore the latest domain state */
    domain_state = ds;
}

static void check_master_state(void)
{
    ec_master_state_t ms;
    /* Read the current master state */
    ecrt_master_state(master, &ms);
    /* check sum of responding slaves on all Ethernet devices */
    if (ms.slaves_responding != master_state.slaves_responding)
    {
        printf("%u slave(s).\n", ms.slaves_responding);
    }
    /**
     * check Application-layer states of all slaves. The states are coded in the lower 4 bits. 
     * If a bit is set, it means that at least one slave in the bus is in the corresponding state.
     * Bit 0: INIT 
     * Bit 1: PREOP 
     * Bit 2: SAFEOP 
     * Bit 3: OP 
     */
    if (ms.al_states != master_state.al_states)
    {
        printf("AL states: 0x%02X.\n", ms.al_states);
    }
    /* check if at least one link is up */
    if (ms.link_up != master_state.link_up)
    {
        printf("Link is %s.\n", ms.link_up ? "up" : "down");
    }
    /* restore the current state of master */
    master_state = ms;
}

static void cyclic_task()
{
    struct timespec wakeupTime, time;
#ifdef MEASURE_TIMING
    struct timespec startTime, endTime, lastStartTime = {};
    uint32_t period_ns = 0, exec_ns = 0, latency_ns = 0,
             latency_min_ns = 0, latency_max_ns = 0,
             period_min_ns = 0, period_max_ns = 0,
             exec_min_ns = 0, exec_max_ns = 0;
#endif

    /* get current time */
    clock_gettime(CLOCK_TO_USE, &wakeupTime);

    while (1)
    {
        wakeupTime = timespec_add(wakeupTime, cycletime);
        /* sleep to wakeup time come */
        clock_nanosleep(CLOCK_TO_USE, TIMER_ABSTIME, &wakeupTime, NULL);

#ifdef MEASURE_TIMING
        clock_gettime(CLOCK_TO_USE, &startTime);
        latency_ns = DIFF_NS(wakeupTime, startTime);
        period_ns = DIFF_NS(lastStartTime, startTime);
        exec_ns = DIFF_NS(lastStartTime, endTime);
        lastStartTime = startTime;

        if (latency_ns > latency_max_ns)
        {
            latency_max_ns = latency_ns;
        }
        if (latency_ns < latency_min_ns)
        {
            latency_min_ns = latency_ns;
        }
        if (period_ns > period_max_ns)
        {
            period_max_ns = period_ns;
        }
        if (period_ns < period_min_ns)
        {
            period_min_ns = period_ns;
        }
        if (exec_ns > exec_max_ns)
        {
            exec_max_ns = exec_ns;
        }
        if (exec_ns < exec_min_ns)
        {
            exec_min_ns = exec_ns;
        }
#endif

        /* fetches received frames from the hardware and processes the datagrams. */
        ecrt_master_receive(master);
        /* determines the states of the domain's datagrams.  */
        ecrt_domain_process(domain);
        /* Reads the state of a domain */
        check_domain_state();
        if (counter)
        {
            counter--;
        }
        else
        {
            /* do following @1Hz */
            counter = FREQUENCY;
            /* calculate new process data */
            blink++;
            /* check for master state */
            check_master_state();

#ifdef MEASURE_TIMING
            /* output timing stats */
            printf("period     %10u ... %10u\n",
                   period_min_ns, period_max_ns);
            printf("exec       %10u ... %10u\n",
                   exec_min_ns, exec_max_ns);
            printf("latency    %10u ... %10u\n",
                   latency_min_ns, latency_max_ns);
            period_max_ns = 0;
            period_min_ns = 0xffffffff;
            exec_max_ns = 0;
            exec_min_ns = 0xffffffff;
            latency_max_ns = 0;
            latency_min_ns = 0xffffffff;
#endif
            /* read the input process data */
            sensor_temp0 = EC_READ_U16(domain_pd + off_sensors_in0);
            sensor_temp1 = EC_READ_U16(domain_pd + off_sensors_in1);
            printf("temp from slave0:%d\ttemp from slave1:%d\r\n", sensor_temp0, sensor_temp1);
            EC_WRITE_U8(domain_pd + off_leds_out0, blink);
            EC_WRITE_U8(domain_pd + off_leds_out1, blink);
        }

        /* write application time to master */
        clock_gettime(CLOCK_TO_USE, &time);
        ecrt_master_application_time(master, TIMESPEC2NS(time));

        if (sync_ref_counter)
        {
            sync_ref_counter--;
        }
        else
        {
            /* sync every cycle */
            sync_ref_counter = 1;
            ecrt_master_sync_reference_clock(master);
        }
        ecrt_master_sync_slave_clocks(master);

        /* queues all domain datagrams in the master's datagram queue */
        ecrt_domain_queue(domain);
        /* sends all datagrams in the queue.  */
        ecrt_master_send(master);

#ifdef MEASURE_TIMING
        clock_gettime(CLOCK_TO_USE, &endTime);
#endif
    }
}

int main(int argc, char **argv)
{
    ec_slave_config_t *sc;

    if (mlockall(MCL_CURRENT | MCL_FUTURE) == -1)
    {
        perror("mlockall failed");
        return -1;
    }

    /* requests the first EtherCAT master for realtime operation */
    master = ecrt_request_master(0);
    if (!master)
    {
        return -1;
    }
    /* create a new process data domain for output */
    domain = ecrt_master_create_domain(master);
    if (!domain)
    {
        return -1;
    }

    /* obtains slave0 configuration */
    ec_slave_config_t* sc_xmc = ecrt_master_slave_config(master, XMC_Slave0Pos, Infineon_XMC4800);
    if (!sc_xmc)
    {
        fprintf(stderr, "Failed to get slave configuration.\n");
        return -1;
    }
    printf("Configuring PDOs...\n");
    /* Specify a complete PDO configuration */
    if (ecrt_slave_config_pdos(sc_xmc, EC_END, xmc_syncs))
    {
        fprintf(stderr, "Failed to configure PDOs.\n");
        return -1;
    }
    /* Registers a PDO entry for process data exchange in a domain */
    off_leds_out0 = ecrt_slave_config_reg_pdo_entry(sc_xmc, 0x7000, 1, domain, NULL);
    if (off_leds_out0 < 0)
    {
        fprintf(stderr, "PDO entry registration failed!\n");
        return -1;
    }
    off_sensors_in0 = ecrt_slave_config_reg_pdo_entry(sc_xmc, 0x6000, 1, domain, NULL);
    if (off_sensors_in0 < 0)
    {
        fprintf(stderr, "PDO entry registration failed!\n");
        return -1;
    }
    /* configure SYNC signals for this slave */
    ecrt_slave_config_dc(sc_xmc, 0x300, PERIOD_NS, 4400000, 0, 0);

    /* obtains slave1 configuration */
    sc_xmc = ecrt_master_slave_config(master, XMC_Slave1Pos, Infineon_XMC4800);
    if (!sc_xmc)
    {
        fprintf(stderr, "Failed to get slave configuration.\n");
        return -1;
    }
    printf("Configuring PDOs...\n");
    /* Specify a complete PDO configuration */
    if (ecrt_slave_config_pdos(sc_xmc, EC_END, xmc_syncs))
    {
        fprintf(stderr, "Failed to configure PDOs.\n");
        return -1;
    }
    /* Registers a PDO entry for process data exchange in a domain */
    off_leds_out1 = ecrt_slave_config_reg_pdo_entry(sc_xmc, 0x7000, 1, domain, NULL);
    if (off_leds_out1 < 0)
    {
        fprintf(stderr, "PDO entry registration failed!\n");
        return -1;
    }
    off_sensors_in1 = ecrt_slave_config_reg_pdo_entry(sc_xmc, 0x6000, 1, domain, NULL);
    if (off_sensors_in1 < 0)
    {
        fprintf(stderr, "PDO entry registration failed!\n");
        return -1;
    }
    /* configure SYNC signals for this slave */
    ecrt_slave_config_dc(sc_xmc, 0x300, PERIOD_NS, 4400000, 0, 0);

    printf("Activating master...\n");
    /* Finishes the configuration phase and prepares for cyclic operation */
    if (ecrt_master_activate(master))
    {
        return -1;
    }
    /* get the mapped domain process data memory */
    if (!(domain_pd = ecrt_domain_data(domain)))
    {
        fprintf(stderr, "Get mapped memory of domain failed!\n");
        return -1;
    }

    pid_t pid = getpid();
    if (setpriority(PRIO_PROCESS, pid, -19))
        fprintf(stderr, "Warning: Failed to set priority: %s\n",
                strerror(errno));

    printf("Starting cyclic function.\n");
    cyclic_task();

    return 0;
}
