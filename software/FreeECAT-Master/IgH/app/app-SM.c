/**
 * EtherCAT Master demo based on IgH, without distributted clock.
 */
#include <errno.h>
#include <signal.h>
#include <stdio.h>
#include <string.h>
#include <sys/resource.h>
#include <sys/time.h>
#include <sys/types.h>
#include <unistd.h>
#include <sqlite3.h>
#include "ecrt.h"

#define FREQUENCY 100 /* run cyclic task 100 times per second */

#define DB_FILE_PATH "/home/pi/flask-demo/app.sqlite"
#define TABLE_NAME_SENSOR "sensor"

#define XMC_Slave0Pos 0, 0 /* slave alias, slave position */
#define XMC_Slave1Pos 0, 1 /* slave alias, slave position */

#define Infineon_XMC4800 0x0000034E, 0x00000000 /* vendor ID, product code */

static sqlite3 *db = NULL;    /* sqlite3 database object pointer */
static char sqlCmd[256];      /* buffer containing SQL command to be exec */
static uint16_t sensor_temp0; /* sensor data from slave1 */
static uint16_t sensor_temp1; /* sensor data from slave2 */

static ec_master_t *master = NULL;          /* ethercat master, manage slaves, domains and io */
static ec_master_state_t master_state = {}; /* restore the current state of master */

static ec_domain_t *domain = NULL;          /* handles process data of a certain group of slaves */
static ec_domain_state_t domain_state = {}; /* restore the latest state of domain */

static ec_slave_config_t *sc_xmc = NULL;          /* configuration of slave XMC_ESC */
static ec_slave_config_state_t sc_xmc_state = {}; /* restore the latest state of slave configuration */

static unsigned int sig_alarms = 0;  /* linux timer alarm counter */
static unsigned int user_alarms = 0; /* user alarm counter */

static uint8_t *domain_pd = NULL; /* domain process date pointer */

static unsigned int off_sensors_in0; /* offsets for PDO entries: sensor input0 */
static unsigned int off_leds_out0;   /* offsets for PDO entries: leds output0 */
static unsigned int off_sensors_in1; /* offsets for PDO entries: sensor input1 */
static unsigned int off_leds_out1;   /* offsets for PDO entries: leds output1 */

static unsigned int counter = 0; /* local counter */
static unsigned int blink = 0;   /* led control value */

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
///////////////////////////////////////////////////////////////////////////////////////////////////

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

static void check_slave_config_states(void)
{
    ec_slave_config_state_t scs;
    /* read the state of the slave configuration */
    ecrt_slave_config_state(sc_xmc, &scs);
    /**
     * check the application-layer state of the slave
     * 1: INIT 
     * 2: PREOP 
     * 4: SAFEOP 
     * 8: OP 
     */
    if (scs.al_state != sc_xmc_state.al_state)
    {
        printf("slave xmc: State 0x%02X.\n", scs.al_state);
    }
    /* check if the slave is online */
    if (scs.online != sc_xmc_state.online)
    {
        printf("slave xmc: %s.\n", scs.online ? "online" : "offline");
    }
    /* check if the slave is brought into OP state */
    if (scs.operational != sc_xmc_state.operational)
    {
        printf("slave xmc: %soperational.\n", scs.operational ? "" : "Not ");
    }
    /* restore the state of slave configuration */
    sc_xmc_state = scs;
}

static void execSQL(sqlite3 *db, const char *cmd)
{
    int ret = 0;
    char *errMsg = NULL;
    char **result;
    int row, col;
    int i;
    if (db)
    {
        /* 增删改语句 */
        if (strncasecmp(cmd, "select", 6))
        {
            ret = sqlite3_exec(db, cmd, NULL, NULL, &errMsg);
            if (ret != SQLITE_OK)
            {
                printf("exec sql command failed:%d-%s\r\n", ret, errMsg);
            }
            else
            {
                printf("exec sql command success\r\n");
            }
        }
        /* 查询语句 */
        else
        {
            ret = sqlite3_get_table(db, cmd, &result, &row, &col, &errMsg);
            if (ret != SQLITE_OK)
            {
                printf("exec sql command failed:%d-%s\r\n", ret, errMsg);
            }
            else
            {
                printf("exec sql command success\r\n");
                for (i = 0; i < (row + 1) * col; i++)
                {
                    printf("%s%s", result[i],
                           ((i + 1) % col) ? "\t\t" : "\r\n");
                }
            }
            /* 释放结果所占用的内存空间 */
            sqlite3_free_table(result);
        }
    }
    sqlite3_free(errMsg);
}

static void cyclic_task()
{
    float temp = 0;
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
        /* check for slave configuration states */
        check_slave_config_states();
        /* read the input process data */
        sensor_temp0 = EC_READ_U16(domain_pd + off_sensors_in0);
        sensor_temp1 = EC_READ_U16(domain_pd + off_sensors_in1);
        printf("temp from slave0:%d\ttemp from slave1:%d\r\n", sensor_temp0, sensor_temp1);
        // memset(sqlCmd, 0, sizeof(sqlCmd));
        // temp = (float) sensor_temp * 0.0625;
        // sprintf(sqlCmd,
        // 		"insert into %s (temperature,datetime) values(%.1f,datetime('now'))",
        // 		TABLE_NAME_SENSOR, temp);
        // execSQL(db, sqlCmd);
        /* write the new output process data */
        EC_WRITE_U8(domain_pd + off_leds_out0, blink);
        EC_WRITE_U8(domain_pd + off_leds_out1, blink);
    }

    /* queues all domain datagrams in the master's datagram queue */
    ecrt_domain_queue(domain);
    /* sends all datagrams in the queue.  */
    ecrt_master_send(master);
}

static void signal_handler(int signum)
{
    switch (signum)
    {
    case SIGALRM:
        sig_alarms++;
        break;
    }
}

int main(int argc, char **argv)
{
    struct sigaction sa;
    struct itimerval tv;
    int ret;

    /* connect to local database */
    ret = sqlite3_open_v2(DB_FILE_PATH, &db,
                          SQLITE_OPEN_READWRITE | SQLITE_OPEN_CREATE, NULL);
    if (ret)
    {
        printf("open sqlite3 database failed:%s\r\n", sqlite3_errmsg(db));
        exit(1);
    }
    else
    {
        printf("open sqlite3 database success\r\n");
    }

    /* requests the first EtherCAT master for realtime operation */
    master = ecrt_request_master(0);
    if (!master)
    {
        return -1;
    }
    /* creates a new process data domain for output */
    domain = ecrt_master_create_domain(master);
    if (!domain)
    {
        return -1;
    }

    /* obtains slave0 configuration */
    sc_xmc = ecrt_master_slave_config(master, XMC_Slave0Pos, Infineon_XMC4800);
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

    /* install signal handler */
    sa.sa_handler = signal_handler;
    sigemptyset(&sa.sa_mask);
    sa.sa_flags = 0;
    if (sigaction(SIGALRM, &sa, 0))
    {
        fprintf(stderr, "Failed to install signal handler!\n");
        return -1;
    }
    /* set cycle time to 10ms */
    printf("Starting timer...\n");
    tv.it_interval.tv_sec = 0;
    tv.it_interval.tv_usec = 1000000 / FREQUENCY;
    tv.it_value.tv_sec = 0;
    tv.it_value.tv_usec = 1000;
    if (setitimer(ITIMER_REAL, &tv, NULL))
    {
        fprintf(stderr, "Failed to start timer: %s\n", strerror(errno));
        return 1;
    }

    printf("Started.\n");
    while (1)
    {
        pause(); /* waiting for a signal */
        while (sig_alarms != user_alarms)
        {
            cyclic_task();
            user_alarms++;
        }
    }

    /* disconnect from local database */
    ret = sqlite3_close_v2(db);
    if (ret)
    {
        printf("close sqlite3 database failed:%s\r\n", sqlite3_errmsg(db));
        exit(1);
    }
    else
    {
        printf("close sqlite3 database success\r\n");
    }

    return 0;
}