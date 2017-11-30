/**
 * @file ecat_ssc.h
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
 *   Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following
 *   disclaimer in the documentation and/or other materials provided with the distribution.
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
 * @endcond
 *
 */

#ifndef ECAT_SSC_H
#define ECAT_SSC_H

/***********************************************************************************************************************
 * HEADER FILES
 **********************************************************************************************************************/
#include <xmc_common.h>
#include <DAVE_common.h>
#include "ecat_ssc_conf.h"
#include "SSC/Src/applInterface.h"
#include "../E_EEPROM_XMC4/e_eeprom_xmc4.h"
#include "../TIMER/timer.h"
#include "../INTERRUPT/interrupt.h"

#if (!((XMC_LIB_MAJOR_VERSION == 2U) && \
       (XMC_LIB_MINOR_VERSION >= 1U) && \
       (XMC_LIB_PATCH_VERSION >= 4U)))
#error "ECAT_SSC requires XMC Peripheral Library v2.1.4 or higher"
#endif

 /**********************************************************************************************************************
  * MACROS
  **********************************************************************************************************************/

 /**********************************************************************************************************************
  * ENUMS
  **********************************************************************************************************************/
/**
 * @ingroup ECAT_SSC_enumerations
 * @{
 */

/**
 * @brief ECAT_SSC status return values
 */
typedef enum ECAT_SSC_STATUS
{
  ECAT_SSC_STATUS_SUCCESS,        /**< Indicates APP initialization state successful */
  ECAT_SSC_STATUS_FAILURE         /**< Indicates APP initialization Error */
} ECAT_SSC_STATUS_t;


/**
 * @}
 */

 /**********************************************************************************************************************
  * DATA STRUCTURES
  **********************************************************************************************************************/
/**
 * @ingroup ECAT_SSC_datastructures
 * @{
 */

/**
 * @brief Handler structure with pointers to dynamic and static parameters.
 */
typedef struct ECAT_SSC
{
  E_EEPROM_XMC4_t *eeprom;             /**< Pointer to E_EEPROM_XMC4 APP handle structure. */
  TIMER_t *timer;                      /**< Pointer to TIMER APP handle structure. */
  const INTERRUPT_t *timer_irqhandler; /**< Pointer to INTERRUPT APP handle structure. */
} const ECAT_SSC_t;

/**
 * @}
 */

/***********************************************************************************************************************
 * API Prototypes
 **********************************************************************************************************************/

#ifdef __cplusplus
extern "C" {
#endif

/**
 * @ingroup ECAT_SSC_apidoc
 * @{
 */

/**
 * @brief Get ECAT_SSC APP version
 * @return DAVE_APP_VERSION_t APP version information (major, minor and patch number)
 *
 * \par<b>Description: </b><br>
 * The function can be used to check application software compatibility with a
 * specific version of the APP.
 *
 * Example Usage:
 *
 * @code
 * #include <DAVE.h>
 *
 * int main(void)
 * {
 *   DAVE_STATUS_t init_status;
 *   DAVE_APP_VERSION_t version;
 *
 *   // Initialize ECAT_SSC APP:
 *   // ECAT_SSC_Init() is called from within DAVE_Init().
 *   init_status = DAVE_Init();
 *
 *   if(init_status == DAVE_STATUS_SUCCESS)
 *   {
 *     version = ECAT_SSC_GetAppVersion();
 *     if (version.major != 4U) {
 *     // Probably, not the right version.
 *     }
 *   }
 *
 *     // More code here
 *     while(1) {
 *
 *     }
 *     return (1);
 *  }
 * @endcode<BR>
*/

DAVE_APP_VERSION_t ECAT_SSC_GetAppVersion(void);

/**
*
* @brief Function to initialize the EtherCAT(ECAT) slave controller.
* @param handler Pointer pointing to APP data structure. Refer @ref ECAT_SSC_t for details.
* @return ECAT_SSC_STATUS_t ECAT_SSC APP status. Refer @ref ECAT_SSC_STATUS_t structure for details.
*
* \par<b>Description:</b><br>
* The function initializes ECAT slave controller hardware unit. It initializes the EEPROM and TIMER
* modules along with the ESC(ETHERCAT Slave Controller). The function configures the emulated EEPROM
* with ESC configuration data. If the slave is first time initialized, the emulated EEPROM is programmed
* with the slave configuration data stored in RAM buffer defined in "eeprom.h" header file. On successive
* initializations the emulated EEPROM content is read into the RAM buffer defined in "eeprom.h". The master
* can re-configure the slave by changing this RAM buffer at runtime. ECAT SSC interrupt and a 1 msec timer
* base is setup in the initialization routine for sync manager and PDI Isr support. All PHY and ECAT
* SSC related related initialization is also done within this routine using the API @ref HW_Init() defined
* in "xmc_eschw.c" file.
*
* \par<b>Related APIs:</b><BR>
* DAVE_Init()
*
* Example Usage:
* @code
* #include <DAVE.h>//Declarations from DAVE Code Generation (includes SFR declaration)
* int main(void)
* {
*   DAVE_STATUS_t status;
*   status = DAVE_Init();  //(DAVE_STATUS_t)ECAT_SSC_Init(&ECAT_SSC_0) is called within DAVE_Init()
*   if(status == DAVE_STATUS_SUCCESS)
*   {
*     XMC_DEBUG("DAVE Apps initialization success\n");
*   }
*   else
*   {
*     XMC_DEBUG(("DAVE Apps initialization failed with status %d\n", status));
*     while(1U)
*     {
*     }
*   }
*   //Placeholder for user application code. The while loop below can be replaced with user application code.
*   while(1U)
*   {
*   }
*   return 1U;
*  }
*  @endcode
*/
ECAT_SSC_STATUS_t ECAT_SSC_Init(ECAT_SSC_t *handle);

/**
 *@}
 */

#ifdef __cplusplus
}
#endif


#include "ecat_ssc_extern.h"

#endif /* ECAT_SSC_H */
