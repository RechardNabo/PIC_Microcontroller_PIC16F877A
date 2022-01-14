#include <stdio.h>
#include <stdlib.h>
#include <pic.h>
#define _XTAL_FREQ 20000000
#define TRUE 0x01

int main(void){
	TRISB = 0b11111101;
	while(TRUE){
		RB1 = 0x01;
		__delay_ms(500);
		RB1 = 0x00;
		__delay_ms(500);
	}
	return EXIT_SUCCESS;
}