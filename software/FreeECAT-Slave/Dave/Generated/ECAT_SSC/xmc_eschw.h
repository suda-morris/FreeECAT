/**
 * @file xmc_eschw.h
 * @date 2015-02-05
 *
 * NOTE:
 * This file is copied by DAVE. Any manual modification done to this file will be lost when the code is regenerated.
 *
 * @cond
 ***********************************************************************************************************************
 * ECAT_SSC v4.0.6 - ECAT_SSC APP initializes the XMC ESC and sets up the interface for Beckhoff EtherCAT slave stack.
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

#ifndef XMC_ESCHW_H
#define XMC_ESCHW_H

/***********************************************************************************************************************
 * HEADER FILES
 **********************************************************************************************************************/
#include "SSC/Src/esc.h"
#include "xmc_ecat.h"
#include "../E_EEPROM_XMC4/e_eeprom_xmc4.h"

 /**********************************************************************************************************************
  * MACROS
  **********************************************************************************************************************/

#define ECAT_TIMER_INC_P_MS (1U) /**< Timer increment value */

#define pEsc ((uint8_t *)ECAT0)  /**< EtherCAT module address */

extern uint8_t aEepromData[];

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

#define HW_EscReadDWord(DWordValue, Address)     ((DWordValue) = (UINT32)(((volatile UINT32 *)pEsc)[((Address)>>2)])) /**< \brief 32Bit ESC read access*/

#define HW_EscReadDWordIsr(DWordValue, Address)  HW_EscReadDWord(DWordValue, Address)                               /**< \brief Interrupt specific 32Bit ESC read access*/

#define HW_EscReadWord(WordValue, Address)       ((WordValue) = (((volatile UINT16 *)pEsc)[((Address)>>1)]))        /**< \brief 16Bit ESC read access*/

#define HW_EscReadWordIsr(WordValue, Address)    HW_EscReadWord(WordValue, Address)                                 /**< \brief Interrupt specific 16Bit ESC read access*/

#define HW_EscReadByte(ByteValue, Address)       ((ByteValue) = (((volatile UINT8 *)pEsc)[(Address)]))              /**< \brief 8Bit ESC read access*/

#define HW_EscReadByteIsr(ByteValue, Address)    HW_EscReadByte(ByteValue, Address)                                 /**< \brief Interrupt specific 8Bit ESC read access*/

#define HW_EscWriteDWord(DWordValue, Address)    ((((volatile UINT32 *)pEsc)[(Address>>2)]) = (DWordValue))         /**< \brief 16Bit ESC write access*/

#define HW_EscWriteDWordIsr(DWordValue, Address) HW_EscWriteWord(DWordValue, Address)                               /**< \brief Interrupt specific 32Bit ESC write access*/

#define HW_EscWriteWord(WordValue, Address)      ((((volatile UINT16 *)pEsc)[((Address)>>1)]) = (WordValue))        /**< \brief 16Bit ESC write access*/

#define HW_EscWriteWordIsr(WordValue, Address)   HW_EscWriteWord(WordValue, Address)                                /**< \brief Interrupt specific 16Bit ESC write access*/

#define HW_EscWriteByte(ByteValue, Address)      ((((volatile UINT8 *)pEsc)[(Address)]) = (ByteValue))              /**< \brief 8Bit ESC write access*/

#define HW_EscWriteByteIsr(ByteValue, Address)   HW_EscWriteByte(ByteValue, Address)                                /**< \brief Interrupt specific 8Bit ESC write access*/

/**
 * @brief 16Bit ESC read access
 *
 * @param pData Pointer to local destination buffer.
 * @param Address EtherCAT Slave Controller address. Specifies the offset within the ESC memory area in Bytes.
 * @param Len Access size in Bytes
 *
 * @return None
 * <BR>
 *
 * \par<b>Description:</b><br>
 * Reads from the EtherCAT Slave Controller. This function is used to access ESC registers and the DPRAM area.
 *
 */
__STATIC_INLINE void HW_EscRead(MEM_ADDR *pData, UINT16 Address, UINT16 Len)
{
  memcpy(pData, &pEsc[Address], Len);
}

/**
 * @brief Interrupt specific 16Bit ESC read access
 *
 * @param pData Pointer to local destination buffer.
 * @param Address EtherCAT Slave Controller address. Specifies the offset within the ESC memory area in Bytes.
 * @param Len Access size in Bytes
 *
 * @return None
 * <BR>
 *
 * \par<b>Description:</b><br>
 * Reads from the EtherCAT Slave Controller. This function is used to access ESC registers and the DPRAM area.
 *
 */
__STATIC_INLINE void HW_EscReadIsr(MEM_ADDR *pData, UINT16 Address, UINT16 Len)
{
  HW_EscRead(pData, Address, Len);
}

/**
 * @brief Reads data from the ESC and copies to slave mailbox memory.
 *
 * @param pData Pointer to local destination buffer.
 * @param Address EtherCAT Slave Controller address. Specifies the offset within the ESC memory area in Bytes.
 * @param Len Access size in Bytes
 *
 * @return None
 * <BR>
 *
 * \par<b>Description:</b><br>
 * Reads data from the ESC and copies to slave mailbox memory. If the local mailbox memory is also located in the
 * application memory this function is equal to HW_EscRead.
 *
 */
__STATIC_INLINE void HW_EscReadMbxMem(MEM_ADDR *pData, UINT16 Address, UINT16 Len)
{
  HW_EscRead(pData, Address, Len);
}

/**
 * @brief 16Bit ESC write access
 *
 * @param pData Pointer to local source buffer.
 * @param Address EtherCAT Slave Controller address. Specifies the offset within the ESC memory area in Bytes.
 * @param Len Access size in Bytes
 *
 * @return None
 * <BR>
 *
 * \par<b>Description:</b><br>
 * Writes from the EtherCAT Slave Controller. This function is used to access ESC registers and the DPRAM area.
 *
 */
__STATIC_INLINE void HW_EscWrite(MEM_ADDR *pData, UINT16 Address, UINT16 Len)
{
  memcpy(&pEsc[Address], pData, Len);
}

/**
 * @brief Interrupt specific 16Bit ESC write access
 *
 * @param pData Pointer to local source buffer.
 * @param Address EtherCAT Slave Controller address. Specifies the offset within the ESC memory area in Bytes.
 * @param Len Access size in Bytes
 *
 * @return None
 * <BR>
 *
 * \par<b>Description:</b><br>
 * Writes from the EtherCAT Slave Controller. This function is used to access ESC registers and the DPRAM area.
 *
 */
__STATIC_INLINE void HW_EscWriteIsr(MEM_ADDR *pData, UINT16 Address, UINT16 Len)
{
  HW_EscWrite(pData, Address, Len);
}

/**
 * @brief Writes data from the slave mailbox memory to ESC memory.
 *
 * @param pData Pointer to local source mailbox buffer.
 * @param Address EtherCAT Slave Controller address. Specifies the offset within the ESC memory area in Bytes.
 * @param Len Access size in Bytes
 *
 * @return None
 * <BR>
 *
 * \par<b>Description:</b><br>
 * Writes data from the slave mailbox memory to ESC memory. If the local mailbox memory is also located in the
 * application memory this function is equal to HW_EscWrite.
 *
 */
__STATIC_INLINE void HW_EscWriteMbxMem(MEM_ADDR *pData, UINT16 Address, UINT16 Len)
{
  HW_EscWrite(pData, Address, Len);
}

/**
 * @brief Get the first two bytes of the AL Event register
 *
 * @param None
 *
 * @return Content of register 0x220-0x221
 * <BR>
 *
 * \par<b>Description:</b><br>
 *
 *
 */
__STATIC_INLINE UINT16 HW_GetALEventRegister(void)
{
  return XMC_ECAT_GetALEventRegister();
}

/**
 * @brief Get the first two bytes of the AL Event register from ISR.
 *
 * @param None
 *
 * @return None
 * <BR>
 *
 * \par<b>Description:</b><br>
 * Special function for ESC access from interrupt service routines if required, otherwise this function is defined as
 * HW_GetALEventRegister.
 *
 */
__STATIC_INLINE UINT16 HW_GetALEventRegister_Isr(void)
{
  return HW_GetALEventRegister();
}

/**
 * @brief Enables EtherCAT interrupt
 *
 * @param None
 *
 * @return None
 * <BR>
 *
 * \par<b>Description:</b><br>
 * Function to enable the XMC EtherCAT slave controller interrupt.
 *
 */
__STATIC_INLINE void ENABLE_ESC_INT(void)
{
  NVIC_EnableIRQ(ECAT0_0_IRQn);
}

/**
 * @brief Disables EtherCAT interrupt
 *
 * @param None
 *
 * @return None
 * <BR>
 *
 * \par<b>Description:</b><br>
 * Function to disable the XMC EtherCAT slave controller interrupt.
 *
 */
__STATIC_INLINE void DISABLE_ESC_INT(void)
{
  NVIC_DisableIRQ(ECAT0_0_IRQn);
}

/**
 * @brief Reads the current register value of the hardware timer.
 *
 * @param None
 *
 * @return Current timer value
 * <BR>
 *
 * \par<b>Description:</b><br>
 * Reads the hardware timer value in ticks. The timer ticks value (increments / ms) is defined in
 * ECAT_TIMER_INC_P_MS. This function is required, if no timer interrupt is supported (ECAT_TIMER_INT = 0)
 * and to calculate the bus cycle time.
 *
 */
UINT32 HW_GetTimer(void);



/**
 * @brief Initializes ECAT slave hardware (PHY, ESC and )
 *
 * @param None
 *
 * @return 0 if initialization was successful,<BR>
 *         Else, if error has occurred while initialization
 * <BR>
 *
 * \par<b>Description:</b><br>
 * Initializes the host controller, process data interface (PDI) and allocates
 * resources which are required for hardware access.
 *
 */
UINT16 HW_Init(void);

/**
 * @brief Release allocated resources
 *
 * @param None
 *
 * @return None
 * <BR>
 *
 * \par<b>Description:</b><br>
 * Release allocated reserved resources
 *
 */
void HW_Release(void);

/**
 * @brief Resets the hardware.
 *
 * @param None
 *
 * @return None
 * <BR>
 *
 * \par<b>Description:</b><br>
 * This function is only required if BOOTSTRAPMODE_SUPPORTED is set.
 *
 */
void HW_RestartTarget(void);

/**
 * @brief Copies EEPROM data to the ESC EEPROM data register
 *
 * @param wordaddr start word address within the EEPROM memory
 *
 * @return 0, if the operation was successful.<BR>
 *         greater than 0, an error has occurred.
 * <BR>
 *
 * \par<b>Description:</b><br>
 * This is only required if EEPROM_EMULATION is enabled and no EEPROM content is created (CREATE_EEPROM_CONTENT== 0).
 * This function shall copy EEPROM data to the ESC EEPROM data register (0x508:0x50F/0x50B).The EEPROM data starting at
 * the specified word address and the length specified with "EEPROM_READ_SIZE". The data shall be copied to the ESC
 * EEPROM buffer (ESC offset 0x508).
 *
 */
UINT16 HW_EepromRead(UINT32 wordaddr);

/**
 * @brief Writes the EEPROM configuration information from ESC data register to EEPROM
 *
 * @param wordaddr start word address within the EEPROM memory
 *
 * @return 0, if the operation was successful.<BR>
 *         greater than 0, an error has occurred.
 * <BR>
 *
 * \par<b>Description:</b><br>
 * This is only required if EEPROM_EMULATION is enabled and no EEPROM content is created (CREATE_EEPROM_CONTENT== 0).
 * This function shall copy data from the ESC EEPROM data register (0x508:0x50F/0x50B).The EEPROM data starting at
 * the specified word address and the length specified with "EEPROM_WRITE_SIZE".
 *
 */
UINT16 HW_EepromWrite(UINT32 wordaddr);

/**
 * @brief Reloads the EEPROM configuration information to ESC data registers
 *
 * @param None
 *
 * @return 0, if the operation was successful.<BR>
 *         greater than 0, an error has occurred.
 * <BR>
 *
 * \par<b>Description:</b><br>
 * This is only required if EEPROM_EMULATION is enabled and no EEPROM content is created (CREATE_EEPROM_CONTENT== 0).
 * This function shall copy the EEPROM reload information to the ESC EEPROM data register (0x508:0x50F/0x50B).
 *
 */
UINT16 HW_EepromReload(void);

/**
 *@}
 */

#ifdef __cplusplus
}
#endif

#endif /* XMC_ESCHW_H */
