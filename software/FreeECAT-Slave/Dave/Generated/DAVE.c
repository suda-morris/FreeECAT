
/**
 * @cond
 ***********************************************************************************************************************
 *
 * Copyright (c) 2015, Infineon Technologies AG
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
 * 2014-06-16:
 *     - Initial version<br>
 * 2015-08-28:
 *     - Added CLOCK_XMC1_Init conditionally
 *
 * @endcond
 *
 */

/***********************************************************************************************************************
 * HEADER FILES
 **********************************************************************************************************************/
#include "DAVE.h"

/***********************************************************************************************************************
 * API IMPLEMENTATION
 **********************************************************************************************************************/

/*******************************************************************************
 * @brief This function initializes the APPs Init Functions.
 *
 * @param[in]  None
 *
 * @return  DAVE_STATUS_t <BR>
 ******************************************************************************/
DAVE_STATUS_t DAVE_Init(void)
{
  DAVE_STATUS_t init_status;
  
  init_status = DAVE_STATUS_SUCCESS;
     /** @Initialization of APPs Init Functions */
     init_status = (DAVE_STATUS_t)CLOCK_XMC4_Init(&CLOCK_XMC4800);

  if (init_status == DAVE_STATUS_SUCCESS)
  {
	 /**  Initialization of ECAT_SSC APP instance ECAT_Slave */
	 init_status = (DAVE_STATUS_t)ECAT_SSC_Init(&ECAT_Slave); 
   } 
  if (init_status == DAVE_STATUS_SUCCESS)
  {
	 /**  Initialization of DIGITAL_IO APP instance DIGITAL_IO_SYNC0 */
	 init_status = (DAVE_STATUS_t)DIGITAL_IO_Init(&DIGITAL_IO_SYNC0); 
   } 
  if (init_status == DAVE_STATUS_SUCCESS)
  {
	 /**  Initialization of DIGITAL_IO APP instance DIGITAL_IO_SYNC1 */
	 init_status = (DAVE_STATUS_t)DIGITAL_IO_Init(&DIGITAL_IO_SYNC1); 
   } 
  if (init_status == DAVE_STATUS_SUCCESS)
  {
	 /**  Initialization of EVENT_DETECTOR APP instance EVENT_DETECTOR_SYNC0 */
	 init_status = (DAVE_STATUS_t)EVENT_DETECTOR_Init(&EVENT_DETECTOR_SYNC0); 
   } 
  if (init_status == DAVE_STATUS_SUCCESS)
  {
	 /**  Initialization of EVENT_GENERATOR APP instance EVENT_GENERATOR_SYNC0 */
	 init_status = (DAVE_STATUS_t)EVENT_GENERATOR_Init(&EVENT_GENERATOR_SYNC0); 
   } 
  if (init_status == DAVE_STATUS_SUCCESS)
  {
	 /**  Initialization of INTERRUPT APP instance INTERRUPT_SYNC1 */
	 init_status = (DAVE_STATUS_t)INTERRUPT_Init(&INTERRUPT_SYNC1); 
   } 
  if (init_status == DAVE_STATUS_SUCCESS)
  {
	 /**  Initialization of INTERRUPT APP instance INTERRUPT_SYNC0 */
	 init_status = (DAVE_STATUS_t)INTERRUPT_Init(&INTERRUPT_SYNC0); 
   } 
  if (init_status == DAVE_STATUS_SUCCESS)
  {
	 /**  Initialization of EVENT_DETECTOR APP instance EVENT_DETECTOR_SYNC1 */
	 init_status = (DAVE_STATUS_t)EVENT_DETECTOR_Init(&EVENT_DETECTOR_SYNC1); 
   } 
  if (init_status == DAVE_STATUS_SUCCESS)
  {
	 /**  Initialization of EVENT_GENERATOR APP instance EVENT_GENERATOR_SYNC1 */
	 init_status = (DAVE_STATUS_t)EVENT_GENERATOR_Init(&EVENT_GENERATOR_SYNC1); 
   } 
  if (init_status == DAVE_STATUS_SUCCESS)
  {
	 /**  Initialization of I2C_MASTER APP instance TMP275 */
	 init_status = (DAVE_STATUS_t)I2C_MASTER_Init(&TMP275); 
   }  
  return init_status;
} /**  End of function DAVE_Init */

