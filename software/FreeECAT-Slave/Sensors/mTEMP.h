/*
 ============================================================================
 Name        : mTEMP.h
 Author      : suda-morris
 Version     : v1.0
 Copyright   : Your copyright notice
 Description : 温度传感器裸机驱动
 ============================================================================
 */

#ifndef SENSORS_MTEMP_H_
#define SENSORS_MTEMP_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <stdint.h>

/**
 * 温度传感器初始化函数
 */
void TEMP_Init(void);

/**
 * 读取温度传感器数据
 */
uint16_t TEMP_Read(void);

#ifdef __cplusplus
}
#endif

#endif /* SENSORS_MTEMP_H_ */
