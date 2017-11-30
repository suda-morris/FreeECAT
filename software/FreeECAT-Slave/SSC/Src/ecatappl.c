/**
\addtogroup EcatAppl EtherCAT application
@{
*/


/**
\file ecatappl.c
\author EthercatSSC@beckhoff.com
\brief Implementation
This file contains the Process Data interface

\version 5.11

<br>Changes to version V5.10.1:<br>
V5.11 COE3: change 0x10F3.2 (Sync Error limit) from UINT32 to UINT16 (according to the ETG.1020)<br>
V5.11 ECAT1: update EEPROM access reset operation<br>
V5.11 ECAT10: change PROTO handling to prevent compiler errors<br>
V5.11 ECAT11: create application interface function pointer, add eeprom emulation interface functions<br>
V5.11 ECAT2: update EEPROM access retry cycle (add 10ms delay between two retry cycles)<br>
V5.11 ECAT3: handle bus cycle calculation for input/output only devices and create warning diag message only if calculation failed<br>
V5.11 ECAT4: enhance SM/Sync monitoring for input/output only slaves<br>
V5.11 ECAT6: add function to calculate bus cycle time<br>
V5.11 ECAT8: call PDO_InputMapping only once if DC is enabled and COE is not supported<br>
V5.11 EEPROM1: fix compiler error during pEEPROM pointer initialization<br>
V5.11 EEPROM2: write Station alias value to EEPROM data register on EEPROM reload command<br>
V5.11 EEPROM3: clear EEPROM error bits<br>
V5.11 EEPROM4: prevent the variable in the EEPROM busy loop to be removed by the compiler<br>
V5.11 ESM7: "add Sync define for 0x22 (""SYNCTYPE_SM2_SYNCHRON""), support value 0x22 for 0x1C33.1 (SM2 sync)"<br>
<br>Changes to version V5.01:<br>
V5.10 COE1: Define one entry description for all 0x1C3x objects and change data type of SI11,12,13 to UINT16 (according ETG.1020)<br>
V5.10 ECAT1: Correct calculation of blinking and flashing sequence<br>
V5.10 ECAT13: Update Synchronisation handling (FreeRun,SM Sync, Sync0, Sync1)<br>
              Compare DC UINT configuration (by ESC Config data) vs. DC activation register settings<br>
              Update 0x1C3x entries<br>
V5.10 ECAT2: Prevent EEPROM data null pointer access (if the pointer is null an command error is set)<br>
             EEPROM emulation return command error if unknown command was received<br>
V5.10 ECAT4: Update alignment marco for 8 to 15 bit alignments (16 and 32 Bit controllers)<br>
             Bugfix calculate LED blink frequency<br>
V5.10 ECAT7: Add "bInitFinished" to indicate if the initialization is complete<br>
V5.10 HW2: Change HW_GetTimer return value to UINT32<br>
<br>Changes to version V5.0:<br>
V5.01 APPL3: Include library demo application<br>
V5.01 ESC1: Change ESC access function (if EEPROM Emulation is active)<br>
V5.01 ESC2: Add missed value swapping<br>
<br>Changes to version V4.40:<br>
V5.0 TEST1: Add test application. See Application Note ET9300 for more details.<br>
V5.0 ECAT2: Application specific functions are moved to application files.<br>
V5.0 ECAT3: Global dummy variables used for dummy ESC operations.<br>
V5.0 ESC1: ESC 32Bit Access added.<br>
V5.0 ESC3: Add EEPROM emulation support.<br>
V5.0 ESM3: Handling pending ESM transitions.<br>
V5.0 ESC5: Enhance EEPROM access handling.<br>
V5.0 PDO1: AL Event flags are not rechecked in PDO_OutputMappping(). (Already checked before call function)<br>
V5.0 SYNC1: Add missed SM event indication (0x1C32/0x1C33 SI11).<br>
<br>Changes to version V4.30:<br>
V4.40 DIAG1: add diagnosis message support<br>
V4.40 PDO1: merge content of HW_InputMapping (spihw.c/mcihw.c) to PDO_InputMapping. merge content of HW_OutputMapping (spihw.c/mcihw.c) to PDO_OutputMapping.<br>
V4.40 PDO2: Generic process data length calculation<br>
V4.40 ECAT2: call cyclic CheckIfLocalError() to check the local flags<br>
V4.40 HW0: Generic hardware access functions. Add Function (PDI_Isr()), content merged from spihw.c and mcihw.c.<br>
V4.40 WD1: define (ESC_SM_WD_SUPPORTED) to choose ESC SyncManager watchdog or local watchdog<br>
V4.40 ESM2: Change state transition behaviour from SafeOP to OP<br>
V4.40 TIMER1: Change bus cycle time calculation and trigger of ECAT_CheckTimer() if ECAT_TIMER_INT is reset<br>
V4.40 HW1: Add support for fc1100 hardware<br>
<br>Changes to version V4.20:<br>
V4.30 EL9800: EL9800_x cyclic application is moved to el9800.c<br>
V4.30 OBJ 3:    add object dictionary initialization<br>
V4.30 SYNC: add CalcSMCycleTime() (calculation of bus cycle time); change synchronisation control functions<br>
V4.30 PDO: include PDO specific functions (moved from coeappl.c).<br>
               xxx_InputMapping(); xxx_OutputMapping(); xxx_ReadInputs(); xxx_ResetOutputs(); xxx_Application()<br>
V4.30 CiA402: Add CiA402_StateMachine() and CiA402_Application() call<br>
V4.20 DC 1: Add DC pending Statemachine handling<br>
V4.20 PIC24: Add EL9800_4 (PIC24) required source code<br>
V4.20 LED 1: Modified LED Handling<br>
V4.11 APPL 1: The checkWatchdog() function should not called in checkTimer() if this function is triggered by an Interrupt<br>
<br>Changes to version V4.08:<br>
V4.10 LED 1: The handling of the EtherCAT-Error-LED was added<br>
V4.10 AOE 3: The AoE fragment size has to be initialized during the state transition<br>
                 from INIT to PREOP<br>
<br>Changes to version V4.07:<br>
V4.08 LED 1: The handling of the EtherCAT-LED can be (de-)selected by the switch LEDS_SUPPORTED<br>
                 because the ET1100 and ET1200 have an output port which could be connected directly.<br>
<br>Changes to version V4.01:<br>
V4.02 ECAT 1: The watchdog timer variables shall be initialized.<br>
<br>Changes to version V4.00:<br>
V4.01 APPL 1: If the application is running in synchron mode and no SM event<br>
              is received, the application should be called from the main loop<br>
V4.01 APPL 2: In FreeRun mode the output should only be copied if the slave is in OP<br>
<br>Changes to version V3.20:<br>
V4.00 APPL 1: The watchdog checking should be done by a microcontroller<br>
                 timer because the watchdog trigger of the ESC will be reset too<br>
                 if only a part of the sync manager data is written<br>
V4.00 APPL 2: The setting of EtherCAT state LEDs were included<br>
V4.00 APPL 3: The outputs should be reset to a safe state,<br>
                   when the state OP is left<br>
V4.00 APPL 4: An example for the EEPROM access through the ESC is shown in<br>
                   the function APPL_StartMailboxHandler<br>
V4.00 APPL 5: The inputs should be read once when the state transition<br>
                   from PREOP to SAFEOP is made<br>
V4.00 APPL 6: The main function was split in MainInit and MainLoop
*/


/*-----------------------------------------------------------------------------------------
------
------    Includes
------
-----------------------------------------------------------------------------------------*/
#include "ecatslv.h"

#define    _ECATAPPL_ 1
#include "ecatappl.h"
#undef _ECATAPPL_
/* ECATCHANGE_START(V5.11) ECAT10*/
/*remove definition of _ECATAPPL_ (#ifdef is used in ecatappl.h)*/
/* ECATCHANGE_END(V5.11) ECAT10*/

#include "coeappl.h"


/* ECATCHANGE_START(V5.11) ECAT11*/
#define _APPL_INTERFACE_ 1
#include "applInterface.h"
#undef _APPL_INTERFACE_
/* ECATCHANGE_END(V5.11) ECAT11*/

#include "XMC_ESC.h"

#include "eeprom.h"
#undef SET_EEPROM_PTR
#define SET_EEPROM_PTR pEEPROM = aEepromData;


/*--------------------------------------------------------------------------------------
------
------    local Types and Defines
------
--------------------------------------------------------------------------------------*/


#ifndef ECAT_TIMER_INC_P_MS
/**
 * \todo Define the timer ticks per ms
 */
#warning "Define the timer ticks per ms"
#endif /* #ifndef ECAT_TIMER_INC_P_MS */


/*-----------------------------------------------------------------------------------------
------
------    local variables and constants
------
-----------------------------------------------------------------------------------------*/
/*variables only required to calculate values for SM Synchronisation objects (0x1C3x)*/
UINT16 u16BusCycleCntMs;        //used to calculate the bus cycle time in Ms
UINT32 StartTimerCnt;    //variable to store the timer register value when get cycle time was triggered
BOOL bCycleTimeMeasurementStarted; // indicates if the bus cycle measurement is started

UINT16             aPdOutputData[(MAX_PD_OUTPUT_SIZE>>1)];
UINT16           aPdInputData[(MAX_PD_INPUT_SIZE>>1)];

/*variables are declared in ecatslv.c*/
    extern VARVOLATILE UINT8 u8dummy;
BOOL bInitFinished = FALSE; /** < \brief indicates if the initialization is finished*/
/*-----------------------------------------------------------------------------------------
------
------    local functions
------
-----------------------------------------------------------------------------------------*/

/*-----------------------------------------------------------------------------------------
------
------    Functions
------
-----------------------------------------------------------------------------------------*/
/////////////////////////////////////////////////////////////////////////////////////////
/**
\brief      This function will copies the inputs from the local memory to the ESC memory
            to the hardware
*////////////////////////////////////////////////////////////////////////////////////////
void PDO_InputMapping(void)
{
    APPL_InputMapping((UINT16*)aPdInputData);
    HW_EscWriteIsr(((MEM_ADDR *) aPdInputData), nEscAddrInputData, nPdInputSize );
}
/////////////////////////////////////////////////////////////////////////////////////////
/**
\brief    This function will copies the outputs from the ESC memory to the local memory
          to the hardware. This function is only called in case of an SM2 
          (output process data) event.
*////////////////////////////////////////////////////////////////////////////////////////
void PDO_OutputMapping(void)
{

    HW_EscReadIsr(((MEM_ADDR *)aPdOutputData), nEscAddrOutputData, nPdOutputSize );

    APPL_OutputMapping((UINT16*) aPdOutputData);
}

/////////////////////////////////////////////////////////////////////////////////////////
/**
 \brief    This function shall be called every 1ms.
 \brief If the switch ECAT_TIMER_INT is 0, the watchdog control is implemented without using
 \brief interrupts. In this case a local timer register is checked every ECAT_Main cycle
 \brief and the function is triggered if 1 ms is elapsed
 *////////////////////////////////////////////////////////////////////////////////////////

void ECAT_CheckTimer(void)
{
    if(sSyncManOutPar.u32CycleTime == 0)
    {
        u16BusCycleCntMs++;
    }

    /*decrement the state transition timeout counter*/
    if(bEcatWaitForAlControlRes &&  (EsmTimeoutCounter > 0))
    {
        EsmTimeoutCounter--;
    }



    DC_CheckWatchdog();
}

/*ECATCHANGE_START(V5.11) ECAT6*/
/////////////////////////////////////////////////////////////////////////////////////////
/**
 \brief    This function is called from the PDI_Isr and is used to calculate the bus cycle time 
  *////////////////////////////////////////////////////////////////////////////////////////
void HandleBusCycleCalculation(void)
{
    /*calculate the cycle time if device is in SM Sync mode and Cycle time was not calculated yet*/
    if ( !bDcSyncActive && bEscIntEnabled)
    {
        BOOL bTiggerCalcCycleTime = FALSE;

        if(sSyncManOutPar.u16GetCycleTime == 1)
            bTiggerCalcCycleTime = TRUE;
        if(bTiggerCalcCycleTime)
        {
            /*get bus cycle time triggered */
            sSyncManOutPar.u32CycleTime = 0;
            sSyncManOutPar.u16GetCycleTime = 0;

            sSyncManInPar.u32CycleTime  = 0;
            sSyncManInPar.u16GetCycleTime = 0;
            
            u16BusCycleCntMs = 0;
            bCycleTimeMeasurementStarted = TRUE;
            StartTimerCnt = (UINT32) HW_GetTimer();
        }
        else
        {
            if(bCycleTimeMeasurementStarted == TRUE)
            {
                UINT32 CurTimerCnt = (UINT32)HW_GetTimer();
/*ECATCHANGE_START(V5.11) ECAT3*/
                UINT32 CalcCycleTime = 0;


#if ECAT_TIMER_INC_P_MS
                CalcCycleTime = (UINT32)u16BusCycleCntMs * 1000000 + (((INT32)(CurTimerCnt-StartTimerCnt))*1000000/ECAT_TIMER_INC_P_MS);    //get elapsed cycle time in ns
#endif

/*ECATCHANGE_START(V5.11) ECAT4*/
                sSyncManOutPar.u32CycleTime = CalcCycleTime;
/*ECATCHANGE_END(V5.11) ECAT4*/
                sSyncManInPar.u32CycleTime  = CalcCycleTime;
                u16BusCycleCntMs = 0;
                StartTimerCnt = 0;
                bCycleTimeMeasurementStarted = FALSE;

/*ECATCHANGE_END(V5.11) ECAT3*/
            /* CiA402 Motion controller cycle time is only set if DC Synchronisation is active*/
            }
        }
    }
}
/*ECATCHANGE_END(V5.11) ECAT6*/

void PDI_Isr(void)
{
    if(bEscIntEnabled)
    {
        /* get the AL event register */
        UINT16  ALEvent = HW_GetALEventRegister_Isr();
        ALEvent = SWAPWORD(ALEvent);

        if ( ALEvent & PROCESS_OUTPUT_EVENT )
        {
            if(bDcRunning && bDcSyncActive)
            {
                /* Reset SM/Sync0 counter. Will be incremented on every Sync0 event*/
                u16SmSync0Counter = 0;
            }
            if(sSyncManOutPar.u16SmEventMissedCounter > 0)
                sSyncManOutPar.u16SmEventMissedCounter--;


/*ECATCHANGE_START(V5.11) ECAT6*/
            //calculate the bus cycle time if required
            HandleBusCycleCalculation();
/*ECATCHANGE_END(V5.11) ECAT6*/

        /* Outputs were updated, set flag for watchdog monitoring */
        bEcatFirstOutputsReceived = TRUE;


        /*
            handle output process data event
        */
        if ( bEcatOutputUpdateRunning )
        {
            /* slave is in OP, update the outputs */
            PDO_OutputMapping();
        }
        else
        {
            /* Just acknowledge the process data event in the INIT,PreOP and SafeOP state */
            HW_EscReadByteIsr(u8dummy,nEscAddrOutputData);
            HW_EscReadByteIsr(u8dummy,(nEscAddrOutputData+nPdOutputSize-1));
        }
        }

/*ECATCHANGE_START(V5.11) ECAT4*/
        if (( ALEvent & PROCESS_INPUT_EVENT ) && (nPdOutputSize == 0))
        {
            //calculate the bus cycle time if required
            HandleBusCycleCalculation();
        }
/*ECATCHANGE_END(V5.11) ECAT4*/

        /*
            Call ECAT_Application() in SM Sync mode
        */
        if (sSyncManOutPar.u16SyncType == SYNCTYPE_SM_SYNCHRON)
        {
            /* The Application is synchronized to process data Sync Manager event*/
            ECAT_Application();
        }

    if ( bEcatInputUpdateRunning 
/*ECATCHANGE_START(V5.11) ESM7*/
       && ((sSyncManInPar.u16SyncType == SYNCTYPE_SM_SYNCHRON) || (sSyncManInPar.u16SyncType == SYNCTYPE_SM2_SYNCHRON))
/*ECATCHANGE_END(V5.11) ESM7*/
        )
    {
        /* EtherCAT slave is at least in SAFE-OPERATIONAL, update inputs */
        PDO_InputMapping();
    }

    /*
      Check if cycle exceed
    */
    /*if next SM event was triggered during runtime increment cycle exceed counter*/
    ALEvent = HW_GetALEventRegister_Isr();
    ALEvent = SWAPWORD(ALEvent);

    if ( ALEvent & PROCESS_OUTPUT_EVENT )
    {
        sSyncManOutPar.u16CycleExceededCounter++;
        sSyncManInPar.u16CycleExceededCounter = sSyncManOutPar.u16CycleExceededCounter;

      /* Acknowledge the process data event*/
            HW_EscReadByteIsr(u8dummy,nEscAddrOutputData);
            HW_EscReadByteIsr(u8dummy,(nEscAddrOutputData+nPdOutputSize-1));
    }
    } //if(bEscIntEnabled)
}

void Sync0_Isr(void)
{
     Sync0WdCounter = 0;

    if(bDcSyncActive)
    {

        if ( bEcatInputUpdateRunning )
        {
            LatchInputSync0Counter++;
        }

/*ECATCHANGE_START(V5.11) ECAT4*/
        if(u16SmSync0Value > 0)
        {
           /* Check if Sm-Sync sequence is invalid */
           if (u16SmSync0Counter > u16SmSync0Value)
           {
              /*ECATCHANGE_START(V5.11) COE3*/
              if ((nPdOutputSize > 0) && (sSyncManOutPar.u16SmEventMissedCounter <= sErrorSettings.u16SyncErrorCounterLimit))
              {
                 /*ECATCHANGE_END(V5.11) COE3*/
                 sSyncManOutPar.u16SmEventMissedCounter = sSyncManOutPar.u16SmEventMissedCounter + 3;
              }

/*ECATCHANGE_START(V5.11) COE3*/
           if ((nPdInputSize > 0) && (nPdOutputSize == 0) && (sSyncManInPar.u16SmEventMissedCounter <= sErrorSettings.u16SyncErrorCounterLimit))
           {
/*ECATCHANGE_END(V5.11) COE3*/
               sSyncManInPar.u16SmEventMissedCounter = sSyncManInPar.u16SmEventMissedCounter + 3;
           }

           } // if (u16SmSync0Counter > u16SmSync0Value)

           
           if ((nPdOutputSize == 0) && (nPdInputSize > 0))
           {
              /* Input only with DC, check if the last input data was read*/
              UINT16  ALEvent = HW_GetALEventRegister_Isr();
              ALEvent = SWAPWORD(ALEvent);

              if ((ALEvent & PROCESS_INPUT_EVENT) == 0)
              {
                 /* no input data was read by the master, increment the sm missed counter*/
                 u16SmSync0Counter++;
              }
              else
              {
                 /* Reset SM/Sync0 counter*/
                 u16SmSync0Counter = 0;

                 sSyncManInPar.u16SmEventMissedCounter = 0;

              }
           }
           else
           {
              u16SmSync0Counter++;
           }
        }//SM -Sync monitoring enabled
/*ECATCHANGE_END(V5.11) ECAT4*/


        if(!bEscIntEnabled && bEcatOutputUpdateRunning)
        {
            /* Output mapping was not done by the PDI ISR */
            PDO_OutputMapping();
        }

        /* Application is synchronized to SYNC0 event*/
        ECAT_Application();

        if ( bEcatInputUpdateRunning 
           && (LatchInputSync0Value > 0) && (LatchInputSync0Value == LatchInputSync0Counter) ) /* Inputs shall be latched on a specific Sync0 event */
        {
            /* EtherCAT slave is at least in SAFE-OPERATIONAL, update inputs */
            PDO_InputMapping();

            if(LatchInputSync0Value == 1)
            {
                /* if inputs are latched on every Sync0 event (otherwise the counter is reset on the next Sync1 event) */
                LatchInputSync0Counter = 0;
            }
        }

    }
}

void Sync1_Isr(void)
{
    Sync1WdCounter = 0;

        if ( bEcatInputUpdateRunning 
            && (sSyncManInPar.u16SyncType == SYNCTYPE_DCSYNC1)
            && (LatchInputSync0Value == 0)) /* Inputs are latched on Sync1 (LatchInputSync0Value == 0), if LatchInputSync0Value > 0 inputs are latched with Sync0 */
        {
            /* EtherCAT slave is at least in SAFE-OPERATIONAL, update inputs */
            PDO_InputMapping();
        }

        /* Reset Sync0 latch counter (to start next Sync0 latch cycle) */
        LatchInputSync0Counter = 0;
}
/////////////////////////////////////////////////////////////////////////////////////////
/**

 \brief    This function shall called within a 1ms cycle.
        Set Run and Error Led depending on the Led state

*////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
/**
 \param     pObjectDictionary   Pointer to application specific object dictionary.
                                NULL if no specific object are available.
\return     0 if initialization was successful

 \brief    This function initialize the EtherCAT Sample Code

*////////////////////////////////////////////////////////////////////////////////////////

UINT16 MainInit(void)
{
    UINT16 Error = 0;
/*Hardware init function need to be called from the application layer*/

/*ECATCHANGE_START(V5.11) EEPROM1*/
#ifdef SET_EEPROM_PTR
    SET_EEPROM_PTR
#endif
/*ECATCHANGE_END(V5.11) EEPROM1*/

    /* initialize the EtherCAT Slave Interface */
    ECAT_Init();
    /* initialize the objects */
    COE_ObjInit();


    /*Timer initialization*/
    u16BusCycleCntMs = 0;
    StartTimerCnt = 0;
    bCycleTimeMeasurementStarted = FALSE;

    /*indicate that the slave stack initialization finished*/
    bInitFinished = TRUE;

/*Application Init need to be called from the application layer*/
     return Error;
}


/////////////////////////////////////////////////////////////////////////////////////////
/**

 \brief    This function shall be called cyclically from main

*////////////////////////////////////////////////////////////////////////////////////////

void MainLoop(void)
{
    /*return if initialization not finished */
    if(bInitFinished == FALSE)
        return;



        /* FreeRun-Mode:  bEscIntEnabled = FALSE, bDcSyncActive = FALSE
           Synchron-Mode: bEscIntEnabled = TRUE, bDcSyncActive = FALSE
           DC-Mode:       bEscIntEnabled = TRUE, bDcSyncActive = TRUE */
        if (
            (!bEscIntEnabled || !bEcatFirstOutputsReceived)     /* SM-Synchronous, but not SM-event received */
          && !bDcSyncActive                                               /* DC-Synchronous */
            )
        {
            /* if the application is running in ECAT Synchron Mode the function ECAT_Application is called
               from the ESC interrupt routine (in mcihw.c or spihw.c),
               in ECAT Synchron Mode it should be additionally checked, if the SM-event is received
               at least once (bEcatFirstOutputsReceived = 1), otherwise no interrupt is generated
               and the function ECAT_Application has to be called here (with interrupts disabled,
               because the SM-event could be generated while executing ECAT_Application) */
            if ( !bEscIntEnabled )
            {
                /* application is running in ECAT FreeRun Mode,
                   first we have to check, if outputs were received */
                UINT16 ALEvent = HW_GetALEventRegister();
                ALEvent = SWAPWORD(ALEvent);

                if ( ALEvent & PROCESS_OUTPUT_EVENT )
                {
                    /* set the flag for the state machine behaviour */
                    bEcatFirstOutputsReceived = TRUE;
                    if ( bEcatOutputUpdateRunning )
                    {
                        /* update the outputs */
                        PDO_OutputMapping();
                    }
                }
                else if ( nPdOutputSize == 0 )
                {
                    /* if no outputs are transmitted, the watchdog must be reset, when the inputs were read */
                    if ( ALEvent & PROCESS_INPUT_EVENT )
                    {
                        /* Outputs were updated, set flag for watchdog monitoring */
                        bEcatFirstOutputsReceived = TRUE;
                    }
                }
            }

            DISABLE_ESC_INT();
            ECAT_Application();

            if ( bEcatInputUpdateRunning )
            {
                /* EtherCAT slave is at least in SAFE-OPERATIONAL, update inputs */
                PDO_InputMapping();
            }
            ENABLE_ESC_INT();
        }


        /* call EtherCAT functions */
        ECAT_Main();

        /* call lower prior application part */
       COE_Main();
       CheckIfEcatError();

}

/*The main function was moved to the application files.*/
/////////////////////////////////////////////////////////////////////////////////////////
/**
 \brief    ECAT_Application (prev. SSC versions "COE_Application")
 this function calculates and the physical process signals and triggers the input mapping
*////////////////////////////////////////////////////////////////////////////////////////
void ECAT_Application(void)
{
    {
        APPL_Application();
    }
/* PDO Input mapping is called from the specific trigger ISR */
}


void EEPROM_CommandHandler(void)
{
   UINT16 Result = 0;
    UINT16 EEPROMReg = 0; //Regvalue 0x502 - 0x5003

    HW_EscReadWord(EEPROMReg,ESC_EEPROM_CONTROL_OFFSET);
    EEPROMReg = SWAPWORD(EEPROMReg);

    if (EEPROMReg & ESC_EEPROM_BUSY_MASK) 
    {
        UINT32 cmd = EEPROMReg  & ESC_EEPROM_CMD_MASK;
        UINT32 addr;
        HW_EscReadDWord(addr,ESC_EEPROM_ADDRESS_OFFSET);
        addr = SWAPDWORD(addr);

/* ECATCHANGE_START(V5.11) EEPROM3*/
        //Clear error bits
        EEPROMReg &= ~(ESC_EEPROM_ERROR_MASK);
/* ECATCHANGE_END(V5.11) EEPROM3*/
        switch (cmd) {
        case 0x00: //IDLE
            break;
        case ESC_EEPROM_CMD_READ_MASK:
        {
/* ECATCHANGE_START(V5.11) ECAT11*/
           if (pAPPL_EEPROM_Read != NULL)
           {
              Result = pAPPL_EEPROM_Read(addr);
              if (Result > 0)
              {
                 //Set Error
                 EEPROMReg |= ESC_EEPROM_ERROR_CMD_ACK;
              }
           }
           else
           {
/* ECATCHANGE_END(V5.11) ECAT11*/

              if (addr <= ESC_EEPROM_SIZE && (pEEPROM != NULL))
              {
                 UINT16 *pData = (UINT16 *)pEEPROM;
                 HW_EscWrite((MEM_ADDR *)&pData[(addr)], ESC_EEPROM_DATA_OFFSET, EEPROM_READ_SIZE);
              }
              else
              {
                 //Set Error
                 EEPROMReg |= ESC_EEPROM_ERROR_CMD_ACK;
              }
           }
        }
        break;
        case ESC_EEPROM_CMD_WRITE_MASK:
            {
/* ECATCHANGE_START(V5.11) ECAT11*/
                 if (pAPPL_EEPROM_Write != NULL)
                 {
                    Result = pAPPL_EEPROM_Write(addr);
                    if (Result > 0)
                    {
                       //Set Error
                       EEPROMReg |= ESC_EEPROM_ERROR_CMD_ACK;
                    }
                 }
                 else
                 {
/* ECATCHANGE_END(V5.11) ECAT11*/

                    if (addr <= ESC_EEPROM_SIZE && (pEEPROM != NULL))
                    {
                       UINT16 *pData = (UINT16 *)pEEPROM;
                       HW_EscRead((MEM_ADDR *)&pData[(addr)], ESC_EEPROM_DATA_OFFSET, EEPROM_WRITE_SIZE);
                    }
                    else
                    {
                       //Set Error
                       EEPROMReg |= ESC_EEPROM_ERROR_CMD_ACK;
                    }
                 }
            }
            break;
        case ESC_EEPROM_CMD_RELOAD_MASK:
        {
/* ECATCHANGE_START(V5.11) ECAT11*/
           if (pAPPL_EEPROM_Reload != NULL)
           {
              Result = pAPPL_EEPROM_Reload();
              if (Result > 0)
              {
                 //Set Error
                 EEPROMReg |= ESC_EEPROM_ERROR_CMD_ACK;
              }
           }
           else
           {
/* ECATCHANGE_END(V5.11) ECAT11*/

              Result = HW_EepromReload();
              if (Result != 0)
              {
                 /* ECATCHANGE_START(V5.11) EEPROM2*/
                 //copy the configured station alias
                 HW_EscWriteWord(((UINT16 *)pEEPROM)[0x4], ESC_EEPROM_DATA_OFFSET);
                 /* ECATCHANGE_END(V5.11) EEPROM2*/

                 EEPROMReg |= ESC_EEPROM_ERROR_CRC;
              }
           }
        }
         break;
        default:
            EEPROMReg |= ESC_EEPROM_ERROR_CMD_ACK;
            break;
        }

        {
        UINT16 TmpData = SWAPWORD(EEPROMReg);
        HW_EscWriteWord(TmpData,ESC_EEPROM_CONTROL_OFFSET);
        }
    }
}


/** @} */

