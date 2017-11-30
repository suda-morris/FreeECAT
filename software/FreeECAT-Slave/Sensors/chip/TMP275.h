/*
 ============================================================================
 Name        : TMP275.h
 Author      : suda-morris
 Version     : v1.0
 Copyright   : Your copyright notice
 Description : 温度传感器芯片级驱动【适配TMP275】
 ============================================================================
 */
#ifndef SENSORS_CHIP_TMP275_H_
#define SENSORS_CHIP_TMP275_H_

#include <DAVE.h>

#define TMP275_SENSOR_ADDR  			0x90	/*!< slave address for TMP275 sensor */
#define TMP275_TEMP_REG					0x00	/*!< temperature register, RO */
#define TMP275_CONFIG_REG				0x01	/*!< configuration register, R/W */
#define TMP275_TLOW_LIMIT_REG			0x02	/*!< TLow limit register, R/W */
#define TMP275_THIGH_LIMIT_REG			0x03	/*!< THigh limit register, R/W */

/**
 * TMP275传感器芯片的初始化函数
 */
void Chip_Init(void);

void Chip_ReadTemp(uint8_t data[], uint8_t size);

#endif /* SENSORS_CHIP_TMP275_H_ */
