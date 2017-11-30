/**
\addtogroup EcatAppl EtherCAT application
@{
*/

/**
\file applInterface.c
\author EthercatSSC@beckhoff.com
\brief Definition of the application interface functions

\version 5.11

<br>Changes to version - :<br>
V5.10.1 : Start file change log
*/

/*-----------------------------------------------------------------------------------------
------
------    Includes
------
-----------------------------------------------------------------------------------------*/


#ifndef _APPL_INTERFACE_H_
#define _APPL_INTERFACE_H_

#include "ecat_def.h"
#include <stdlib.h>
#include <string.h>
#include "esc.h"
#include "ecatslv.h"
#include "objdef.h"
#include "ecatappl.h"



#endif /*#ifndef _APPL_INTERFACE_H_*/

#if defined(_APPL_INTERFACE_) && (_APPL_INTERFACE_ == 1)
   #define PROTO
#else
    #define PROTO extern
#endif

/*-----------------------------------------------------------------------------------------
------
------    Function pointer which are used to call optional functions from the application
------
-----------------------------------------------------------------------------------------*/

/////////////////////////////////////////////////////////////////////////////////////////
/**
 \return   0 if successful or greater 0 in case of an error
 
 \param    wordaddr      Word address of the EEPROM data to be read
 
 \brief    This function shall copy EEPROM data to the ESC EEPROM data register (0x508:0x50F/0x50B).
 \brief    The EEPROM data starting at the specified word address and the length specified with "EEPROM_READ_SIZE".
 \brief    The data shall be copied to the ESC EEPROM buffer (ESC offset 0x508)
*////////////////////////////////////////////////////////////////////////////////////////
PROTO UINT16 (* pAPPL_EEPROM_Read)(UINT32 wordaddr);

/////////////////////////////////////////////////////////////////////////////////////////
/**
\return   0 if successful or greater 0 in case of an error

\param    wordaddr      Word address of the EEPROM data to be written

\brief    This function shall copy data from the ESC EEPROM data register (0x508:0x50F/0x50B) to the EEPROM memory.
\brief    The EEPROM data starting at the specified word address and the length specified with "EEPROM_WRITE_SIZE".
*////////////////////////////////////////////////////////////////////////////////////////
PROTO UINT16(*pAPPL_EEPROM_Write)(UINT32 wordaddr);

/////////////////////////////////////////////////////////////////////////////////////////
/**
\return   0 if successful or greater 0 in case of an error

\brief    This function shall copy the EEPROM reload information to the ESC EEPROM data register (0x508:0x50F/0x50B).
\brief    Read the ESC data sheet for the reload information (e.g. Beckhoff IPCore ESC Datasheet section II, clause 3.45.1)
*////////////////////////////////////////////////////////////////////////////////////////
PROTO UINT16(*pAPPL_EEPROM_Reload)(void);



/*-----------------------------------------------------------------------------------------
------
------    Functions provided by the SSC to be called from the application
------
-----------------------------------------------------------------------------------------*/


/////////////////////////////////////////////////////////////////////////////////////////
/**
\return   0 if successful or greater 0 in case of an error

\brief    Initialize the generic slave stack.
\brief    This function should be called after the platform including operating system and
\brief    ESC is ready to use.
*////////////////////////////////////////////////////////////////////////////////////////
PROTO UINT16 MainInit(void);


/////////////////////////////////////////////////////////////////////////////////////////
/**
\brief    This function handles the low priority function like EtherCAT state machine
\brief    handling, mailbox protocols and if no synchronization is enabled also the
\brief    application.
\brief    This function shall be called cyclically from the application.
*////////////////////////////////////////////////////////////////////////////////////////
PROTO void MainLoop(void);


/////////////////////////////////////////////////////////////////////////////////////////
/**
\param    alStatus       requested AL Status 
\param    alStatusCode   requested AL Status Code

\brief    This function shall be called by the application to trigger state transition in case
\brief    of an application error or to complete a pending transition.
\brief    If the function was called due to an error it shall be again if the error is gone.
\brief    NOTE: state requests to a higher state than the current state are not allowed.
*////////////////////////////////////////////////////////////////////////////////////////
PROTO void ECAT_StateChange(UINT8 alStatus, UINT16 alStatusCode);

#undef PROTO
