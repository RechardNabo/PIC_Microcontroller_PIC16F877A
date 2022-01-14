#include <pic.h>
#include <stdio.h>
#include <stdlib.h>
#include "Seg7_lib.h"
#define TRUE 0x01
#define _XTAL_FREQ 20000000

unsigned int Check_button();
int main(void){
	TRISB = 0b11111111;
	Seg_Init();
	while(TRUE){
		Seg_Display(0x00);
		if(Check_button() == 0x01){
			Up_count();
		}
		if(Check_button() == 0x02){
			Down_count();
		}
	}
	return EXIT_SUCCESS;
}

unsigned int Check_button(){
	unsigned int status = 0x00;
	PORTB = 0b00000011;
	if(RB0 == 0x01){
		status = 0x01;
	}
	__delay_ms(5);
	if(RB1 == 0x01){
		status = 0x02;
	}
	__delay_ms(5);
	return status;
	
}
