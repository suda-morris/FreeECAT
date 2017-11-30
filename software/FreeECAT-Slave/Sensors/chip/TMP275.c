/*
 ============================================================================
 Name        : TMP275.c
 Author      : suda-morris
 Version     : v1.0
 Copyright   : Your copyright notice
 Description : 温度传感器芯片级驱动【适配TMP275】
 ============================================================================
 */
#include "TMP275.h"

static void _set_mode(uint8_t mode) {
	uint8_t toSend = TMP275_CONFIG_REG;
	I2C_MASTER_Transmit(&TMP275, true, TMP275_SENSOR_ADDR, &toSend,
			sizeof(toSend), false);
	while (I2C_MASTER_IsTxBusy(&TMP275))
		;
	toSend = mode;
	I2C_MASTER_Transmit(&TMP275, false, TMP275_SENSOR_ADDR, &toSend,
			sizeof(toSend), true);
	while (I2C_MASTER_IsTxBusy(&TMP275))
		;
}

void Chip_Init(void) {
	_set_mode(0x60);
}

void Chip_ReadTemp(uint8_t data[], uint8_t size) {
	uint8_t toSend = TMP275_TEMP_REG;
	I2C_MASTER_Transmit(&TMP275, true, TMP275_SENSOR_ADDR, &toSend,
			sizeof(toSend), false);
	while (I2C_MASTER_IsTxBusy(&TMP275))
		;
	I2C_MASTER_Receive(&TMP275, true, TMP275_SENSOR_ADDR, data, size, true,
	true);
	while (I2C_MASTER_IsRxBusy(&TMP275))
		;
}
