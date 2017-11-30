/*
 ============================================================================
 Name        : mTEMP.c
 Author      : suda-morris
 Version     : v1.0
 Copyright   : Your copyright notice
 Description : 温度传感器裸机驱动
 ============================================================================
 */
#include "mTEMP.h"
#include "chip/TMP275.h"

void TEMP_Init(void) {
	Chip_Init();
}

uint16_t TEMP_Read(void) {
	uint8_t data[2];
	uint16_t result = 0;
	Chip_ReadTemp(data, sizeof(data));
	result = ((data[0] << 8 | data[1]) >> 4);
	return result;
}
