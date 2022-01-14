#include <pic.h>
#include <stdio.h>
#include <stdlib.h>
#define _XTAL_FREQ 20000000
#define TRUE 0x01
#define FALSE 0x00


unsigned int Check_btn();
int main(void){
	TRISD0 = 0x00;	
	while(TRUE){
		if(Check_btn() == 0x00){
		RD0 = 0x00;
		}
		if(Check_btn() == 0x01){
		RD0 = 0x01;
		}
	}
	return EXIT_SUCCESS;
}

unsigned int Check_btn(){
	TRISB2 = 0x01;
	unsigned int status;
	if((RB2 = 0x00)== 0x01){
		status = 0x01;	
	}
	if((RB2 = 0x00)== 0x00){
		status = 0x00;
	}
	__delay_ms(5);	
	return status;
}