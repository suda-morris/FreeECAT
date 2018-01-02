#include "mTEMP.h"
#include "app.h"

void Init_ECAT_Adapt_LED() {
	PORT1->IOCR12 |= 0x00800000;
	PORT0->IOCR12 |= 0x00800000;
	PORT3->IOCR12 |= 0x00800000;
	PORT0->IOCR12 |= 0x80000000;
	PORT1->IOCR0 |= 0x00800000;
	PORT3->IOCR12 |= 0x00008000;
	PORT5->IOCR0 |= 0x80000000;
	PORT3->IOCR8 |= 0x80000000;
}
void Clear_ECAT_Adapt_LED() {
	PORT1->OMR = 0x00004000;
	PORT0->OMR = 0x00004000;
	PORT3->OMR = 0x00004000;
	PORT0->OMR = 0x00008000;
	PORT1->OMR = 0x00000004;
	PORT3->OMR = 0x00002000;
	PORT5->OMR = 0x000000008;
	PORT3->OMR = 0x00000800;
}
void Init_Relax_Button() {
	PORT15->PDISC &= ~(0x3000);
}

int main(void) {
	DAVE_STATUS_t status;

	status = DAVE_Init();
	if (status != DAVE_STATUS_SUCCESS) {
		XMC_DEBUG("DAVE APPs initialization failed\n");
		while (1U) {
		}
	}
	Init_ECAT_Adapt_LED();
	Clear_ECAT_Adapt_LED();
	Init_Relax_Button();
//	TEMP_Init();
	while (1U) {
		MainLoop();
//		tsensor = TEMP_Read();
	}
}

void SYNC0IRQHandler(void) {
	Sync0_Isr();
	DIGITAL_IO_ToggleOutput(&DIGITAL_IO_SYNC0);
}

void SYNC1IRQHandler(void) {
	Sync1_Isr();
	DIGITAL_IO_ToggleOutput(&DIGITAL_IO_SYNC1);
}
