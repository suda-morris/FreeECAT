/**
* \addtogroup XMC_ESC XMC_ESC
* @{
*/

/**
\file XMC_ESCObjects
\author ET9300Utilities.ApplicationHandler (Version 1.3.6.0) | EthercatSSC@beckhoff.com

\brief XMC_ESC specific objects<br>
\brief NOTE : This file will be overwritten if a new object dictionary is generated!<br>
*/

#if defined(_XMC__ESC_) && (_XMC__ESC_ == 1)
#define PROTO
#else
#define PROTO extern
#endif
/******************************************************************************
*                    Object 0x1600 : LED process data mapping
******************************************************************************/
/**
* \addtogroup 0x1600 0x1600 | LED process data mapping
* @{
* \brief Object 0x1600 (LED process data mapping) definition
*/
#ifdef _OBJD_
/**
* \brief Object entry descriptions<br>
* <br>
* SubIndex 0<br>
* SubIndex 1 - Reference to 0x7000.1<br>
* SubIndex 2 - Reference to 0x7000.2<br>
* SubIndex 3 - Reference to 0x7000.3<br>
* SubIndex 4 - Reference to 0x7000.4<br>
* SubIndex 5 - Reference to 0x7000.5<br>
* SubIndex 6 - Reference to 0x7000.6<br>
* SubIndex 7 - Reference to 0x7000.7<br>
* SubIndex 8 - Reference to 0x7000.8<br>
*/
OBJCONST TSDOINFOENTRYDESC    OBJMEM asEntryDesc0x1600[] = {
{ DEFTYPE_UNSIGNED8 , 0x8 , ACCESS_READ },
{ DEFTYPE_UNSIGNED32 , 0x20 , ACCESS_READ }, /* Subindex1 - Reference to 0x7000.1 */
{ DEFTYPE_UNSIGNED32 , 0x20 , ACCESS_READ }, /* Subindex2 - Reference to 0x7000.2 */
{ DEFTYPE_UNSIGNED32 , 0x20 , ACCESS_READ }, /* Subindex3 - Reference to 0x7000.3 */
{ DEFTYPE_UNSIGNED32 , 0x20 , ACCESS_READ }, /* Subindex4 - Reference to 0x7000.4 */
{ DEFTYPE_UNSIGNED32 , 0x20 , ACCESS_READ }, /* Subindex5 - Reference to 0x7000.5 */
{ DEFTYPE_UNSIGNED32 , 0x20 , ACCESS_READ }, /* Subindex6 - Reference to 0x7000.6 */
{ DEFTYPE_UNSIGNED32 , 0x20 , ACCESS_READ }, /* Subindex7 - Reference to 0x7000.7 */
{ DEFTYPE_UNSIGNED32 , 0x20 , ACCESS_READ }}; /* Subindex8 - Reference to 0x7000.8 */

/**
* \brief Object/Entry names
*/
OBJCONST UCHAR OBJMEM aName0x1600[] = "LED process data mapping\000"
"SubIndex 001\000"
"SubIndex 002\000"
"SubIndex 003\000"
"SubIndex 004\000"
"SubIndex 005\000"
"SubIndex 006\000"
"SubIndex 007\000"
"SubIndex 008\000\377";
#endif //#ifdef _OBJD_

#ifndef _XMC__ESC_OBJECTS_H_
/**
* \brief Object structure
*/
typedef struct OBJ_STRUCT_PACKED_START {
UINT16 u16SubIndex0;
UINT32 SI1; /* Subindex1 - Reference to 0x7000.1 */
UINT32 SI2; /* Subindex2 - Reference to 0x7000.2 */
UINT32 SI3; /* Subindex3 - Reference to 0x7000.3 */
UINT32 SI4; /* Subindex4 - Reference to 0x7000.4 */
UINT32 SI5; /* Subindex5 - Reference to 0x7000.5 */
UINT32 SI6; /* Subindex6 - Reference to 0x7000.6 */
UINT32 SI7; /* Subindex7 - Reference to 0x7000.7 */
UINT32 SI8; /* Subindex8 - Reference to 0x7000.8 */
} OBJ_STRUCT_PACKED_END
TOBJ1600;
#endif //#ifndef _XMC__ESC_OBJECTS_H_

/**
* \brief Object variable
*/
PROTO TOBJ1600 LEDProcessDataMapping0x1600
#if defined(_XMC__ESC_) && (_XMC__ESC_ == 1)
={8,0x70000101,0x70000201,0x70000301,0x70000401,0x70000501,0x70000601,0x70000701,0x70000801}
#endif
;
/** @}*/



/******************************************************************************
*                    Object 0x1A00 : Sensor process data mapping
******************************************************************************/
/**
* \addtogroup 0x1A00 0x1A00 | Sensor process data mapping
* @{
* \brief Object 0x1A00 (Sensor process data mapping) definition
*/
#ifdef _OBJD_
/**
* \brief Object entry descriptions<br>
* <br>
* SubIndex 0<br>
* SubIndex 1 - Reference to 0x6000.1<br>
*/
OBJCONST TSDOINFOENTRYDESC    OBJMEM asEntryDesc0x1A00[] = {
{ DEFTYPE_UNSIGNED8 , 0x8 , ACCESS_READ },
{ DEFTYPE_UNSIGNED32 , 0x20 , ACCESS_READ }}; /* Subindex1 - Reference to 0x6000.1 */

/**
* \brief Object/Entry names
*/
OBJCONST UCHAR OBJMEM aName0x1A00[] = "Sensor process data mapping\000"
"SubIndex 001\000\377";
#endif //#ifdef _OBJD_

#ifndef _XMC__ESC_OBJECTS_H_
/**
* \brief Object structure
*/
typedef struct OBJ_STRUCT_PACKED_START {
UINT16 u16SubIndex0;
UINT32 SI1; /* Subindex1 - Reference to 0x6000.1 */
} OBJ_STRUCT_PACKED_END
TOBJ1A00;
#endif //#ifndef _XMC__ESC_OBJECTS_H_

/**
* \brief Object variable
*/
PROTO TOBJ1A00 SensorProcessDataMapping0x1A00
#if defined(_XMC__ESC_) && (_XMC__ESC_ == 1)
={1,0x60000110}
#endif
;
/** @}*/



/******************************************************************************
*                    Object 0x1C12 : SyncManager 2 assignment
******************************************************************************/
/**
* \addtogroup 0x1C12 0x1C12 | SyncManager 2 assignment
* @{
* \brief Object 0x1C12 (SyncManager 2 assignment) definition
*/
#ifdef _OBJD_
/**
* \brief Entry descriptions<br>
* 
* Subindex 0<br>
* Subindex 1 - n (the same entry description is used)<br>
*/
OBJCONST TSDOINFOENTRYDESC    OBJMEM asEntryDesc0x1C12[] = {
{ DEFTYPE_UNSIGNED8 , 0x8 , ACCESS_READ },
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READ }};

/**
* \brief Object name definition<br>
* For Subindex 1 to n the syntax 'Subindex XXX' is used
*/
OBJCONST UCHAR OBJMEM aName0x1C12[] = "SyncManager 2 assignment\000\377";
#endif //#ifdef _OBJD_

#ifndef _XMC__ESC_OBJECTS_H_
/**
* \brief Object structure
*/
typedef struct OBJ_STRUCT_PACKED_START {
UINT16   u16SubIndex0;  /**< \brief Subindex 0 */
UINT16 aEntries[1];  /**< \brief Subindex 1 - 1 */
} OBJ_STRUCT_PACKED_END
TOBJ1C12;
#endif //#ifndef _XMC__ESC_OBJECTS_H_

/**
* \brief Object variable
*/
PROTO TOBJ1C12 sRxPDOassign
#if defined(_XMC__ESC_) && (_XMC__ESC_ == 1)
={1,{0x1600}}
#endif
;
/** @}*/



/******************************************************************************
*                    Object 0x1C13 : SyncManager 3 assignment
******************************************************************************/
/**
* \addtogroup 0x1C13 0x1C13 | SyncManager 3 assignment
* @{
* \brief Object 0x1C13 (SyncManager 3 assignment) definition
*/
#ifdef _OBJD_
/**
* \brief Entry descriptions<br>
* 
* Subindex 0<br>
* Subindex 1 - n (the same entry description is used)<br>
*/
OBJCONST TSDOINFOENTRYDESC    OBJMEM asEntryDesc0x1C13[] = {
{ DEFTYPE_UNSIGNED8 , 0x8 , ACCESS_READ },
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READ }};

/**
* \brief Object name definition<br>
* For Subindex 1 to n the syntax 'Subindex XXX' is used
*/
OBJCONST UCHAR OBJMEM aName0x1C13[] = "SyncManager 3 assignment\000\377";
#endif //#ifdef _OBJD_

#ifndef _XMC__ESC_OBJECTS_H_
/**
* \brief Object structure
*/
typedef struct OBJ_STRUCT_PACKED_START {
UINT16   u16SubIndex0;  /**< \brief Subindex 0 */
UINT16 aEntries[1];  /**< \brief Subindex 1 - 1 */
} OBJ_STRUCT_PACKED_END
TOBJ1C13;
#endif //#ifndef _XMC__ESC_OBJECTS_H_

/**
* \brief Object variable
*/
PROTO TOBJ1C13 sTxPDOassign
#if defined(_XMC__ESC_) && (_XMC__ESC_ == 1)
={1,{0x1A00}}
#endif
;
/** @}*/



/******************************************************************************
*                    Object 0x6000 : Sensor
******************************************************************************/
/**
* \addtogroup 0x6000 0x6000 | Sensor
* @{
* \brief Object 0x6000 (Sensor) definition
*/
#ifdef _OBJD_
/**
* \brief Object entry descriptions<br>
* <br>
* SubIndex 0<br>
* SubIndex 1 - Sensor1<br>
*/
OBJCONST TSDOINFOENTRYDESC    OBJMEM asEntryDesc0x6000[] = {
{ DEFTYPE_UNSIGNED8 , 0x8 , ACCESS_READ },
{ DEFTYPE_UNSIGNED16 , 0x10 , ACCESS_READ | OBJACCESS_TXPDOMAPPING }}; /* Subindex1 - Sensor1 */

/**
* \brief Object/Entry names
*/
OBJCONST UCHAR OBJMEM aName0x6000[] = "Sensor\000"
"Sensor1\000\377";
#endif //#ifdef _OBJD_

#ifndef _XMC__ESC_OBJECTS_H_
/**
* \brief Object structure
*/
typedef struct OBJ_STRUCT_PACKED_START {
UINT16 u16SubIndex0;
UINT16 Sensor1; /* Subindex1 - Sensor1 */
} OBJ_STRUCT_PACKED_END
TOBJ6000;
#endif //#ifndef _XMC__ESC_OBJECTS_H_

/**
* \brief Object variable
*/
PROTO TOBJ6000 Sensor0x6000
#if defined(_XMC__ESC_) && (_XMC__ESC_ == 1)
={1,0x00}
#endif
;
/** @}*/



/******************************************************************************
*                    Object 0x7000 : LED
******************************************************************************/
/**
* \addtogroup 0x7000 0x7000 | LED
* @{
* \brief Object 0x7000 (LED) definition
*/
#ifdef _OBJD_
/**
* \brief Object entry descriptions<br>
* <br>
* SubIndex 0<br>
* SubIndex 1 - LED1<br>
* SubIndex 2 - LED2<br>
* SubIndex 3 - LED3<br>
* SubIndex 4 - LED4<br>
* SubIndex 5 - LED5<br>
* SubIndex 6 - LED6<br>
* SubIndex 7 - LED7<br>
* SubIndex 8 - LED8<br>
*/
OBJCONST TSDOINFOENTRYDESC    OBJMEM asEntryDesc0x7000[] = {
{ DEFTYPE_UNSIGNED8 , 0x8 , ACCESS_READ },
{ DEFTYPE_BOOLEAN , 0x1 , ACCESS_READWRITE | OBJACCESS_RXPDOMAPPING }, /* Subindex1 - LED1 */
{ DEFTYPE_BOOLEAN , 0x1 , ACCESS_READWRITE | OBJACCESS_RXPDOMAPPING }, /* Subindex2 - LED2 */
{ DEFTYPE_BOOLEAN , 0x1 , ACCESS_READWRITE | OBJACCESS_RXPDOMAPPING }, /* Subindex3 - LED3 */
{ DEFTYPE_BOOLEAN , 0x1 , ACCESS_READWRITE | OBJACCESS_RXPDOMAPPING }, /* Subindex4 - LED4 */
{ DEFTYPE_BOOLEAN , 0x1 , ACCESS_READWRITE | OBJACCESS_RXPDOMAPPING }, /* Subindex5 - LED5 */
{ DEFTYPE_BOOLEAN , 0x1 , ACCESS_READWRITE | OBJACCESS_RXPDOMAPPING }, /* Subindex6 - LED6 */
{ DEFTYPE_BOOLEAN , 0x1 , ACCESS_READWRITE | OBJACCESS_RXPDOMAPPING }, /* Subindex7 - LED7 */
{ DEFTYPE_BOOLEAN , 0x1 , ACCESS_READWRITE | OBJACCESS_RXPDOMAPPING }}; /* Subindex8 - LED8 */

/**
* \brief Object/Entry names
*/
OBJCONST UCHAR OBJMEM aName0x7000[] = "LED\000"
"LED1\000"
"LED2\000"
"LED3\000"
"LED4\000"
"LED5\000"
"LED6\000"
"LED7\000"
"LED8\000\377";
#endif //#ifdef _OBJD_

#ifndef _XMC__ESC_OBJECTS_H_
/**
* \brief Object structure
*/
typedef struct OBJ_STRUCT_PACKED_START {
UINT16 u16SubIndex0;
BOOLEAN(LED1); /* Subindex1 - LED1 */
BOOLEAN(LED2); /* Subindex2 - LED2 */
BOOLEAN(LED3); /* Subindex3 - LED3 */
BOOLEAN(LED4); /* Subindex4 - LED4 */
BOOLEAN(LED5); /* Subindex5 - LED5 */
BOOLEAN(LED6); /* Subindex6 - LED6 */
BOOLEAN(LED7); /* Subindex7 - LED7 */
BOOLEAN(LED8); /* Subindex8 - LED8 */
} OBJ_STRUCT_PACKED_END
TOBJ7000;
#endif //#ifndef _XMC__ESC_OBJECTS_H_

/**
* \brief Object variable
*/
PROTO TOBJ7000 LED0x7000
#if defined(_XMC__ESC_) && (_XMC__ESC_ == 1)
={8,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00}
#endif
;
/** @}*/







#ifdef _OBJD_
TOBJECT    OBJMEM ApplicationObjDic[] = {
/* Object 0x1600 */
{NULL , NULL ,  0x1600 , {DEFTYPE_PDOMAPPING , 8 | (OBJCODE_REC << 8)} , asEntryDesc0x1600 , aName0x1600 , &LEDProcessDataMapping0x1600, NULL , NULL , 0x0000 },
/* Object 0x1A00 */
{NULL , NULL ,  0x1A00 , {DEFTYPE_PDOMAPPING , 1 | (OBJCODE_REC << 8)} , asEntryDesc0x1A00 , aName0x1A00 , &SensorProcessDataMapping0x1A00, NULL , NULL , 0x0000 },
/* Object 0x1C12 */
{NULL , NULL ,  0x1C12 , {DEFTYPE_UNSIGNED16 , 1 | (OBJCODE_ARR << 8)} , asEntryDesc0x1C12 , aName0x1C12 , &sRxPDOassign, NULL , NULL , 0x0000 },
/* Object 0x1C13 */
{NULL , NULL ,  0x1C13 , {DEFTYPE_UNSIGNED16 , 1 | (OBJCODE_ARR << 8)} , asEntryDesc0x1C13 , aName0x1C13 , &sTxPDOassign, NULL , NULL , 0x0000 },
/* Object 0x6000 */
{NULL , NULL ,  0x6000 , {DEFTYPE_RECORD , 1 | (OBJCODE_REC << 8)} , asEntryDesc0x6000 , aName0x6000 , &Sensor0x6000, NULL , NULL , 0x0000 },
/* Object 0x7000 */
{NULL , NULL ,  0x7000 , {DEFTYPE_RECORD , 8 | (OBJCODE_REC << 8)} , asEntryDesc0x7000 , aName0x7000 , &LED0x7000, NULL , NULL , 0x0000 },
{NULL,NULL, 0xFFFF, {0, 0}, NULL, NULL, NULL, NULL}};
#endif    //#ifdef _OBJD_
#undef PROTO

/** @}*/
#define _XMC__ESC_OBJECTS_H_
