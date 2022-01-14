#include <pic.h>
#include <stdio.h>
#include <stdlib.h>
#define _XTAL_FREQ 20000000
#define TRUE 0x01
#define time 100

;
void Display_1();
void Display_2();
int main(void){
	TRISB = 0b00000001;
	TRISC = 0b11110110;
	Display_2();
	
	return EXIT_SUCCESS;
}

void Display_2(){
	
	while(TRUE){
	PORTB = 0b00000010;
	PORTC = 0b00000000;
	__delay_ms(time);
	PORTB = 0b00001000;
	PORTC = 0b00000000;
	__delay_ms(time);
	PORTB = 0b00100000;
	PORTC = 0b00000000;
	__delay_ms(time);
	PORTB = 0b10000000;
	PORTC = 0b00000000;
	__delay_ms(time);
	PORTB = 0b00000000;
	PORTC = 0b00000001;
	__delay_ms(time);
	PORTB = 0b00000000;
	PORTC = 0b00001000;
	__delay_ms(time);
	}
}

void Display_1(){
	
	while(TRUE){
		RB1 = 0x01;
		RB3 = 0x00;
		RB5 = 0x00;
		RB7 = 0x00;
		RC1 = 0x00;
		RC3 = 0x00;
		__delay_ms(time);
		RB1 = 0x00;
		RB3 = 0x01;
		RB5 = 0x00;
		RB7 = 0x00;
		RC1 = 0x00;
		RC3 = 0x00;
		__delay_ms(time);
		RB1 = 0x00;
		RB3 = 0x00;
		RB5 = 0x01;
		RB7 = 0x00;
		RC1 = 0x00;
		RC3 = 0x00;
		__delay_ms(time);
		RB1 = 0x00;
		RB3 = 0x00;
		RB5 = 0x00;
		RB7 = 0x01;
		RC1 = 0x00;
		RC3 = 0x00;
		__delay_ms(time);
		RB1 = 0x00;
		RB3 = 0x00;
		RB5 = 0x00;
		RB7 = 0x00;
		RC1 = 0x01;
		RC3 = 0x00;
		__delay_ms(time);
		RB1 = 0x00;
		RB3 = 0x00;
		RB5 = 0x00;
		RB7 = 0x00;
		RC1 = 0x00;
		RC3 = 0x01;
		__delay_ms(time);
	}
}
