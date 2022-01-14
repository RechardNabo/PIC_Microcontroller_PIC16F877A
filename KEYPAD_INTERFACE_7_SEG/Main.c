#include <pic.h>
#include <stdlib.h>
#include "Seg7_lib.h"
#include "KEYPAD_lib.h"
#define TRUE 0x01
#define _XTAL_FREQ 20000000


int main(void){
	
	KEYPAD_INIT();
	Seg_Init();
	
	while(TRUE){
		Seg_Display(KEYPAD_KEYS());
		__delay_ms(5);
	}
	return EXIT_SUCCESS;
}