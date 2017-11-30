/**
 * @file ecat_ssc.c
 * @date 2016-02-05
 *
 * NOTE:
 * This file is copied by DAVE. Any manual modification done to this file will be lost when the code is regenerated.
 *
 * @cond
 ***********************************************************************************************************************
 * ECAT_SSC v4.0.14 - ECAT_SSC APP initializes the XMC ESC and sets up the interface for Beckhoff EtherCAT slave stack.
 *
 * Copyright (c) 2016, Infineon Technologies AG
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,are permitted provided that the
 * following conditions are met:
 *
 *   Redistributions of source code must retain the above copyright notice, this list of conditions and the  following
 *   disclaimer.
 *
 *   Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the
 *   following disclaimer in the documentation and/or other materials provided with the distribution.
 *
 *   Neither the name of the copyright holders nor the names of its contributors may be used to endorse or promote
 *   products derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
 * INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE  FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 * SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY,OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT  OF THE
 * USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 * To improve the quality of the software, users are encouraged to share modifications, enhancements or bug fixes
 * with Infineon Technologies AG (dave@infineon.com).
 ***********************************************************************************************************************
 *
 * Change History
 * --------------
 *
 * 2016-02-05:
 *     - Initial version
 *
 * 2016-09-27:
 *     - Added check to ensure the EEPROM size defined in SSC tool fits to the one defined E_EEPROM_XMC4 APP
 *     - Fixed initialization of EEPROM data taking into account size of EEPROM specified in SSC tool
 *
 * @endcond
 *
 */

/***********************************************************************************************************************
 * HEADER FILES
 **********************************************************************************************************************/
#include "ecat_ssc.h"
#include "xmc_eschw.h"

#if ESC_EEPROM_SIZE > E_EEPROM_XMC4_DATA_BLOCK_SIZE
#error E_EEPROM_XMC4 size insufficient to hold requested ESC_EEPROM_SIZE from SSC tool. Check size in E_EEPROM_XMC4 APP
#endif

/***********************************************************************************************************************
 * MACROS
 **********************************************************************************************************************/

/***********************************************************************************************************************
 * LOCAL DATA
 **********************************************************************************************************************/

/***********************************************************************************************************************
 * LOCAL ROUTINES
 **********************************************************************************************************************/

/**********************************************************************************************************************
 * API IMPLEMENTATION
 **********************************************************************************************************************/

/*
 * This function returns the driver version of the APP
 */
DAVE_APP_VERSION_t ECAT_SSC_GetAppVersion(void)
{
  DAVE_APP_VERSION_t version;

  version.major = ECAT_SSC_MAJOR_VERSION;
  version.minor = ECAT_SSC_MINOR_VERSION;
  version.patch = ECAT_SSC_PATCH_VERSION;

  return version;
}

/*
 * This function intialize's the EtherCAT slave controller.
 */
ECAT_SSC_STATUS_t ECAT_SSC_Init(ECAT_SSC_t *handle)
{
  uint32_t status;

  status = (uint32_t)ECAT_SSC_STATUS_FAILURE;

  /* Initialize the Flash Emulated EEPROM and copy the latest content to the internal working RAM buffer*/
  status = (uint32_t)E_EEPROM_XMC4_Init(handle->eeprom);

  if (status == (uint32_t)ECAT_SSC_STATUS_SUCCESS)
  {
    /* Check if the slave configuration data is available in the Flash Emulated EEPROM*/
    if (E_EEPROM_XMC4_IsFlashEmpty())
    {
      /* Prepare the default configuration out of the SSC for EEPROM */
      E_EEPROM_XMC4_WriteArray(0U, aEepromData, (uint16_t)ESC_EEPROM_SIZE);

      /* Program the RAM contents to Emulated EEPROM*/
      status = (uint32_t)E_EEPROM_XMC4_UpdateFlashContents();
    }
    else
    {
      /* Read the latest contents from RAM buffer which has the latest contents of EEPROM */
      E_EEPROM_XMC4_ReadArray(0U,aEepromData,(uint16_t)ESC_EEPROM_SIZE);
    }

    /* Initialize the 1 millisecond timer module*/
    if (status == (uint32_t)ECAT_SSC_STATUS_SUCCESS)
    {
      status = (uint32_t)TIMER_Init(handle->timer);
      /* Initialize the timer interrupt handler*/
      if (status == (uint32_t)ECAT_SSC_STATUS_SUCCESS)
      {
        status = (uint32_t)INTERRUPT_Init(handle->timer_irqhandler);
        /* Call Beckhoff HW abstraction layer API to initialize the XMC4800 ESC and supporting functions*/
        if (status == (uint32_t)ECAT_SSC_STATUS_SUCCESS)
        {
          status = HW_Init();
          /* Call Beckhoff HW abstraction layer API to start the stack interface initialization*/
          if (status == (uint32_t)ECAT_SSC_STATUS_SUCCESS)
          {
            status = MainInit();
            if (status == (uint32_t)ECAT_SSC_STATUS_SUCCESS)
            {
              /*Start the 1 millisec timer*/
              status = (uint32_t)TIMER_Start(handle->timer);
            }
          }
        }
      }
    }
  }
  return ((ECAT_SSC_STATUS_t)status);
}
