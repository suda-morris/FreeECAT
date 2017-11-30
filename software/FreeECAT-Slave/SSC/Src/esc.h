/**
 * \addtogroup ESCRegister  ESC Register
 * @{
 */

/**
\file esc.h
\author EthercatSSC@beckhoff.com
\brief EtherCAT Slave Controller related defines and Types

\version 5.10

<br>Changes to version V5.01:<br>
V5.10 ESC1: Update address register offset for 32Bit ESC access<br>
V5.10 ESC2: Check if defined SM settings do not exceed the available DPRAM range (in error case AL Status 0x14 is returned)<br>
V5.10 ESC3: Handle DC cControl register values in case of 32Bit ESC access (a Sync activation mask need to defined/used)<br>
<br>Changes to version - :<br>
V5.01 : Start file change log
 */
#ifndef _ESC_H_
#define _ESC_H_

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

#define SIZEOF_SM_REGISTER                      8 /**< \brief Each SyncManger has 8Byte Configuration/Status Registers*/
#define MAX_NO_OF_SYNC_MAN                      16/**< \brief Maximum Number of SyncManager channels supported by an ESC*/

#define    BL_PAGE_SIZE        512

/*---------------------------------------------
-    ESC Offsets (Detailed Information about the registers are located in the ESC Datasheets e.g. ET1100 Datasheet www.beckhoff.com/english.asp?download/ethercat_development_products.htm?id=71003127100387)
-----------------------------------------------*/
#define ESC_INFO_OFFSET                         0x0000                               /**< \brief ESC information registers startoffset*/

#define ESC_COMM_INFO_OFFSET                    0x0004                               /**< \brief Communication information registers startoffset*/

#define ESC_DPRAM_SIZE_OFFSET                   0x0006                              /**< \brief Register Description: Size of the supported DPRAM in KB*/
#define ESC_SM_CHANNELS_OFFSET                  0x0005                              /**< \brief Register Description: Number of supported SyncManager channels (or entities) of the EtherCAT Slave Controller*/


#define ESC_SLAVE_ADDRESS_OFFSET                0x0010                              /**< \brief Register Description: Address used for node addressing (FPxx commands)*/



#define ESC_AL_CONTROL_OFFSET                   0x0120                              /**< \brief Register Description: Initiate State Transition of the Device State Machine*/
#define ESC_AL_STATUS_OFFSET                    0x0130                              /**< \brief Register Description: Actual State of the Device State Machine*/
#define ESC_AL_STATUS_CODE_OFFSET               0x0134                              /**< \brief Register Description: AL Status Code*/

#define ESC_RUN_LED_OVERRIDE                    0x0138                              /**< \brief Register Description: Set Ecat Run indication via ESC. (not all ESC types support this feature)*/
#define ESC_ERROR_LED_OVERRIDE                  0x0139                              /**< \brief Register Description: Set Ecat Error indication via ESC. (not all ESC types support this feature)*/

#define ESC_PDI_CONTROL_OFFSET                  0x0140                              /**< \brief Register Description: Specifies the process data interface*/

#define ESC_AL_EVENTMASK_OFFSET                 0x0204                              /**< \brief Register Description: AL Event masking of the AL Event Request register Events for mapping to PDI IRQ signal*/
#define ESC_AL_EVENT_OFFSET                     0x0220                              /**< \brief Register Description: "Mirror" register for ESC events*/

#define ESC_WD_DIVIDER_OFFSET                   0x0400                              /**< \brief Register Description: Number of 25 MHz tics (minus 2) that represents the basic watchdog increment. (Default value is 100us = 2498)*/

#define ESC_PD_WD_TIME                          0x0420                              /**< \brief Register Description: Number of basic watchdog increments (Default value with Watchdog divider 100us means 100ms Watchdog)*/
#define ESC_PD_WD_STATE                         0x0440                              /**< \brief Register Description: Watchdog Status of Process Data (triggered by SyncManagers)*/
#define ESC_PD_WD_TRIGGER_MASK                  0x0001                              /**< \brief Trigger state of the process data watchdog*/

#define ESC_EEPROM_CONFIG_OFFSET                0x0500                              /**< \brief Register Description: EEPROM Access Configuration*/
/*EEPROM config and access state bit mask (based on "ESC_EEPROM_CONFIG_OFFSET") - START*/
#define ESC_EEPROM_ASSIGN_TO_PDI_MASK           0x0001                              /**< \brief Description (0x500.0): PDI has EEPROM control*/
#define ESC_EEPROM_LOCKED_BY_PDI_MASK           0x0100                              /**< \brief Description (0x500.8): PDI locked EEPROM access*/
/*EEPROM config and access state bit mask (based on "ESC_EEPROM_CONFIG_OFFSET") - END*/

#define ESC_EEPROM_CONTROL_OFFSET               0x0502
/* EEPROM command and status bit masks (based on "ESC_EEPROM_CONTROL_OFFSET") - START*/
#define ESC_EEPROM_SUPPORTED_READBYTES_MASK     0x0040                              /**< \brief Description (0x502.6): Supported number of EEPROM read bytes: 0-> 4 Bytes; 1 -> 8 Bytes*/
#define ESC_EEPROM_CMD_MASK                     0x0700                              /**< \brief Description (0x502.8:10): Command bit mask*/
#define ESC_EEPROM_CMD_READ_MASK                0x0100                              /**< \brief Description (0x502.8): Currently executed read command*/
#define ESC_EEPROM_CMD_WRITE_MASK               0x0200                              /**< \brief Description (0x502.9): Initialize Write Command*/
#define ESC_EEPROM_CMD_RELOAD_MASK              0x0400                              /**< \brief Description (0x502.10): Trigger EEPROM reload*/
#define ESC_EEPROM_ERROR_MASK                   0x7800                              /**< \brief Description : Mask all EEPROM error bits; Checksum error (0x0502.11); EEPROM not loaded (0x0502.12); Missing EEPROM Acknowledge (0x0502.13); Write Error (0x0502.14)*/
#define ESC_EEPROM_ERROR_CRC                    0x0800                              /**< \brief Description (0x502.11): EEPROM CRC Error*/
#define ESC_EEPROM_ERROR_LOAD                   0x1000                              /**< \brief Description (0x502.11): EEPROM loading status (0 = OK)*/
#define ESC_EEPROM_ERROR_CMD_ACK                0x2000                              /**< \brief Description (0x502.13): EEPROM Acknowledge/Command*/
#define ESC_EEPROM_BUSY_MASK                    0x8000                              /**< \brief Description (0x502.15): EEPROM Busy*/
/* EEPROM command and status bit masks (based on "ESC_EEPROM_CONTROL_OFFSET") - END*/
#define ESC_EEPROM_ADDRESS_OFFSET               0x0504
#define ESC_EEPROM_DATA_OFFSET                  0x0508

#define ESC_SYNCMAN_REG_OFFSET                  0x0800                              /**< \brief Register Description: Start address of the SyncManager Configuration/Staus registers*/
#define ESC_SYNCMAN_CONTROL_OFFSET              0x0804                              /**< \brief Register Description: SyncManager Setting Register*/

#define ESC_SYNCMAN_STATUS_OFFSET               0x0805                              /**< \brief Register Description: SyncManager Status Register*/

#define ESC_SYNCMAN_ACTIVE_OFFSET               0x0806                              /**< \brief Register Description: SyncManager Activation Register*/

#define ESC_SM_PDICONTROL_OFFSET                0x0807

#define    ESC_SYSTEMTIME_OFFSET                0x0910                              /**< \brief Register Description: Local copy of the System Time*/

#define    ESC_DC_UNIT_CONTROL_OFFSET           0x0980                              /**< \brief Register Description: Control registers for Cycle and Sync Unit (can be predefined with the "AssignActivate" Element in the device description, for further information see ETG.2000)*/
#define ESC_DC_SYNC_ACTIVATION_OFFSET           0x0981                              /**< \brief Register Description: Sync Configuration*/
#define ESC_DC_SYNC_UNIT_ACTIVE_MASK            0x01                                /**< \brief Description (0x981.0): Sync Out Unit is activated*/
#define ESC_DC_SYNC0_ACTIVE_MASK                0x02                                /**< \brief Description (0x981.1): Sync0 generation is activated*/
#define ESC_DC_SYNC1_ACTIVE_MASK                0x04                                /**< \brief Description (0x981.2): Sync1 generation is activated*/
#define ESC_DC_SYNC_UNIT_AUTO_ACTIVE_MASK       0x08                                /**< \brief Description (0x980.11): Sync Out Unit is activated automatic when System time was written*/

#define ESC_DC_SYNC0_CYCLETIME_OFFSET           0x09A0                              /**< \brief Register Description: 32Bit Time between two consecutive SYNC0 pulses in ns*/
#define ESC_DC_SYNC1_CYCLETIME_OFFSET           0x09A4                              /**< \brief Register Description: 32Bit Time between two consecutive SYNC1 pulses in ns*/


#pragma pack(1)


/*---------------------------------------------
-    Sync Manager
-----------------------------------------------*/
/** \brief SyncManager Register struture*/
typedef struct STRUCT_PACKED_START
{

  UINT16                        PhysicalStartAddress; /**< \brief SyncManager address*/
  UINT16                        Length; /**< \brief SyncManager length*/

//ESC_8BIT ACCESS
      UINT8                         Settings[4]; /**< \brief Register values 0x0804 : 0x0807*/

/*Defines to access :
* - SM Control register 0x0804
*/
#define SM_SETTING_CONTROL_OFFSET           0 /**< \brief Offset to value of register 0x0804*/
#define SM_SETTING_MODE_MASK                0x02 /**< \brief SyncManager mode mask*/
#define SM_SETTING_MODE_THREE_BUFFER_VALUE  0x00 /**< \brief SyncManager 3Buffer mode value*/
#define SM_SETTING_MODE_ONE_BUFFER_VALUE    0x02 /**< \brief SyncManager 1Buffer mode value*/
#define SM_SETTING_DIRECTION_MASK           0x0C /**< \brief SyncManager direction mask*/
#define SM_SETTING_DIRECTION_READ_VALUE     0x00 /**< \brief SyncManager read direction*/
#define SM_SETTING_DIRECTION_WRITE_VALUE    0x04 /**< \brief SyncManager write direction*/
#define SM_SETTING_WATCHDOG_VALUE           0x40 /**< \brief SyncManager watchdog value*/

/*Defines to access :
* - SM Status register 0x0805
*/
#define SM_SETTING_STATUS_OFFSET            1 /**< \brief Offset to value of register 0x0805*/
#define SM_STATUS_MBX_BUFFER_FULL           0x08 /**< \brief Indicates in one buffer mode if buffer was completely written (based on "ESC_SYNCMAN_STATUS_OFFSET")*/
/*Defines to access :
* - SM Active register 0x0806
*/
#define SM_SETTING_ACTIVATE_OFFSET          2 /**< \brief Offset to value of register 0x0806*/
#define SM_SETTING_ENABLE_VALUE             0x01 /**< \brief SyncManager enable*/
#define SM_SETTING_REPAET_REQ_MASK          0x02 /**< \brief SyncManager Repeat request*/
#define SM_SETTING_REPEAT_REQ_SHIFT         0   /**< \brief SyncManager Repeat request shift*/

/*Defines to access :
* - SM PDI COntrol register 0x0807
*/
#define SM_SETTING_PDICONTROL_OFFSET        3  /**< \brief Offset to value of register 0x0807*/
#define SM_SETTING_PDI_DISABLE              0x01  /**< \brief Bit0 of register 0x0807 (if 1 SM is disabled from PDI)*/
#define SM_SETTING_REPEAT_ACK               0x02  /**< \brief Bit1 of register 0x0807*/
}STRUCT_PACKED_END
TSYNCMAN;


#pragma pack()

#endif //_ESC_H_
/** @}*/
