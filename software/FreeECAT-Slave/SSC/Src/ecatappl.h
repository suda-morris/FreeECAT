/**
 \addtogroup EcatAppl EtherCAT application
 * @{
 */

/**
\file ecatappl.h
\author EthercatSSC@beckhoff.com

\version 5.11

<br>Changes to version V5.10:<br>
V5.11 ECAT10: change PROTO handling to prevent compiler errors<br>
<br>Changes to version V5.01:<br>
V5.10 ECAT13: Update Synchronisation handling (FreeRun,SM Sync, Sync0, Sync1)<br>
              Compare DC UINT configuration (by ESC Config data) vs. DC activation register settings<br>
              Update 0x1C3x entries<br>
V5.10 ECAT4: Update alignment marco for 8 to 15 bit alignments (16 and 32 Bit controllers)<br>
             Bugfix calculate LED blink frequency<br>
<br>Changes to version - :<br>
V5.01 : Start file change log
 */
/*-----------------------------------------------------------------------------------------
------
------    Description
------
------    ecatappl.h
------
------    EtherCAT Slave Application
------                                                                                                                                                                 ------
-----------------------------------------------------------------------------------------*/

#ifndef _ECATAPPL_H_
#define _ECATAPPL_H_

/*-----------------------------------------------------------------------------------------
------
------    Includes
------
-----------------------------------------------------------------------------------------*/

#include "ecat_def.h"

/*-----------------------------------------------------------------------------------------
------
------    Defines and Types
------
-----------------------------------------------------------------------------------------*/
/*Set to unsigned short to handle bit entries correct*/
#define     BOOLEAN(x)                  unsigned short(x):1 /**< \brief Marco to define BOOLEAN object entry*/
#define     BIT1(x)                     unsigned short(x):1 /**< \brief Marco to define BIT1 object entry*/
#define     BIT2(x)                     unsigned short(x):2 /**< \brief Marco to define BIT2 object entry*/
#define     BIT3(x)                     unsigned short(x):3 /**< \brief Marco to define BIT3 object entry*/
#define     BIT4(x)                     unsigned short(x):4 /**< \brief Marco to define BIT4 object entry*/
#define     BIT5(x)                     unsigned short(x):5 /**< \brief Marco to define BIT5 object entry*/
#define     BIT6(x)                     unsigned short(x):6 /**< \brief Marco to define BIT5 object entry*/
#define     BIT7(x)                     unsigned short(x):7 /**< \brief Marco to define BIT6 object entry*/
#define     BIT8(x)                     unsigned short(x):8 /**< \brief Marco to define BIT7 object entry*/
#define     ALIGN0(x)
#define     ALIGN1(x)                   unsigned short(x):1; /**< \brief Marco to define ALIGN1 object entry*/
#define     ALIGN2(x)                   unsigned short(x):2; /**< \brief Marco to define ALIGN2 object entry*/
#define     ALIGN3(x)                   unsigned short(x):3; /**< \brief Marco to define ALIGN3 object entry*/
#define     ALIGN4(x)                   unsigned short(x):4; /**< \brief Marco to define ALIGN4 object entry*/
#define     ALIGN5(x)                   unsigned short(x):5; /**< \brief Marco to define ALIGN5 object entry*/
#define     ALIGN6(x)                   unsigned short(x):6; /**< \brief Marco to define ALIGN6 object entry*/
#define     ALIGN7(x)                   unsigned short(x):7; /**< \brief Marco to define ALIGN7 object entry*/
#define     ALIGN8(x)                   unsigned short(x):8; /**< \brief Marco to define ALIGN8 object entry*/
#define     ALIGN9(x)                   unsigned short(x):9; /**< \brief Marco to define ALIGN9 object entry*/
#define     ALIGN10(x)                  unsigned short(x):10; /**< \brief Marco to define ALIGN10 object entry*/
#define     ALIGN11(x)                  unsigned short(x):11; /**< \brief Marco to define ALIGN11 object entry*/
#define     ALIGN12(x)                  unsigned short(x):12; /**< \brief Marco to define ALIGN12 object entry*/
#define     ALIGN13(x)                  unsigned short(x):13; /**< \brief Marco to define ALIGN13 object entry*/
#define     ALIGN14(x)                  unsigned short(x):14; /**< \brief Marco to define ALIGN14 object entry*/
#define     ALIGN15(x)                  unsigned short(x):15; /**< \brief Marco to define ALIGN15 object entry*/
#endif //_ECATAPPL_H_

/* ECATCHANGE_START(V5.11) ECAT10*/
#if defined(_ECATAPPL_) && (_ECATAPPL_ == 1)
/* ECATCHANGE_END(V5.11) ECAT10*/
    #define PROTO
#else
    #define PROTO extern
#endif


/*-----------------------------------------------------------------------------------------
------
------    Global Variables
------
-----------------------------------------------------------------------------------------*/


PROTO UINT8 *pEEPROM; /**< \brief Pointer to EEPROM buffer*/

PROTO BOOL bEcatWaitForInputUpdate; /**< \brief Wait for input update*/
PROTO BOOL bEtherCATRunLed; /**< \brief Current run LED value*/
PROTO BOOL bEtherCATErrorLed; /**< \brief Current error LED value*/
PROTO BOOL bRunApplication; /**< \brief Indicates if the stack shall be running (if false the Hardware will be released)*/


/*-----------------------------------------------------------------------------------------
------
------    Global Functions
------
-----------------------------------------------------------------------------------------*/




PROTO    void       ECAT_CheckTimer(void);
PROTO    void       PDI_Isr(void);
PROTO    void       Sync0_Isr(void);
PROTO    void       Sync1_Isr(void);
PROTO    void       ECAT_Application(void);
PROTO    void       PDO_ResetOutputs(void);
PROTO    void       PDO_ReadInputs(void);
PROTO    void       PDO_InputMapping(void);

PROTO    void       CalcSMCycleTime(void);

PROTO   void EEPROM_CommandHandler(void);



#undef PROTO
/** @}*/
