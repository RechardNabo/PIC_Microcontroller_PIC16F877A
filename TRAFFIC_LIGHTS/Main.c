#include <pic.h>
#include <stdio.h>
#include <stdlib.h>
#define TRUE 0x01
#define _XTAL_FREQ 2000000

int main(void){
	TRISB0 = 0x00;
	TRISB1 = 0x00;
	TRISB2 = 0x00;
	TRISB3 = 0x00;
	TRISB4 = 0x00;
	TRISB5 = 0x00;
	while(TRUE){
		PORTB = 0b00100001;
		__delay_ms(50000);
		PORTB = 0b00010001;
		__delay_ms(25000);
		PORTB = 0b00001001;
		__delay_ms(25000);
		PORTB = 0b00001100;
		__delay_ms(50000);
		PORTB = 0b00001010;
		__delay_ms(25000);
		PORTB = 0b00001001;
		__delay_ms(25000);
	}
	return EXIT_SUCCESS;
	
}