#include <pic.h>
#include "PWM_lib.h"
#include <stdlib.h>
#define _XTAL_FREQ 20000000
#define TRUE 0x01

void main(void){
	unsigned int i = 0x00;
	PWM_SETUP();
	TRISB0 =0x01;
	TRISB1 = 0x01;
	while(TRUE){
	if((RB0 = 0x00)==0x00 && i < 1000){
			i=i+0x0A;	
		}
	if((RB1 = 0x00)==0x00 && i >0x00){
			i=i-0x0A;
		}
	PWM1_DUTY(i);
	__delay_ms(50);
	}
}
