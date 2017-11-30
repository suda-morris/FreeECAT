/**
 * \addtogroup CoE CAN Application Profile over EtherCAT
 * @{
 */

/**
\file coeappl.h
\author EthercatSSC@beckhoff.com

\version 5.11

<br>Changes to version V5.01:<br>
V5.11 ECAT10: change PROTO handling to prevent compiler errors<br>
<br>Changes to version - :<br>
V5.01 : Start file change log
 */
#ifndef _COEAPPL_H_
#define _COEAPPL_H_

/*-----------------------------------------------------------------------------------------
------
------    Includes
------
-----------------------------------------------------------------------------------------*/
#include "objdef.h"


/*-----------------------------------------------------------------------------------------
------
------    Defines and Types
------
-----------------------------------------------------------------------------------------*/



#endif //_COEAPPL_H_

/* ECATCHANGE_START(V5.11) ECAT10*/
#if defined(_COEAPPL_) && (_COEAPPL_ == 1)
/* ECATCHANGE_END(V5.11) ECAT10*/
    #define PROTO
#else
    #define PROTO extern
#endif

/*-----------------------------------------------------------------------------------------
------
------    Global variables
------
-----------------------------------------------------------------------------------------*/


/*-----------------------------------------------------------------------------------------
------
------    Global functions
------
-----------------------------------------------------------------------------------------*/
PROTO    void COE_ObjInit(void);
PROTO    void COE_Main(void);
PROTO UINT16 COE_ObjDictionaryInit(void);
PROTO UINT16 COE_AddObjectToDic(TOBJECT OBJMEM * pNewObjEntry);
PROTO void COE_RemoveDicEntry(UINT16 index);
PROTO void COE_ClearObjDictionary(void);
PROTO OBJCONST TOBJECT OBJMEM * COE_GetObjectDictionary(void);


#undef PROTO
/** @}*/
