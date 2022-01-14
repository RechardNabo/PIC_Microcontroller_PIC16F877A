#include <pic.h>
#include <stdio.h>
#include <stdlib.h>
#define _XTAL_FREQ 20000000
#define TRUE 0x01

void OUTPUT_PINS_8_BITS_1();
void OUTPUT_PINS_8_BITS_2();
void INPUT_PINS();
void OUTPUT_PINS();
int main(void){
	
	TRISB0 = 0x01;
	TRISB1 = 0x01;
	TRISD0 = 0x00;
	TRISD1 = 0x00;
	while(TRUE){
		RD0 = 0x00;
		RD1 = 0x00;
		if((RB0 = 0x00) == 0x01){
		RD0 = 0x01;
		}
		if((RB1 = 0x00) == 0x00){
			RD1 = 0x01;
		}
		__delay_ms(50);
	}
		return EXIT_SUCCESS;
}

void INPUT_PINS(){
	TRISB0 = 0x01; // input > read 0x01
	TRISB2 = 0x00; // outpot > write 0x01
	TRISC0 = 0x00;
	while(TRUE){
		if(RB0 == 0x01){ //RB0 is input reading by 0x01
			RB2 = 0x01;
		}else{
			RB2 = 0x00;
			
		}
	}
}
void OUTPUT_PINS(){
	//set state of single pin bit as output
	TRISA0 =0x00; //output
	TRISB2 =0x00; //output
	TRISC0 = 0x00;
	while(TRUE){
		RA0 = 0x01;
		RB2 = 0x01;
		//PORTC.0 =0x01;
		__delay_ms(100);
		RA0 = 0x00;
		RB2 = 0x00;
		//PORTC.0 = 0x00;
		__delay_ms(100);
	}
}

void OUTPUT_PINS_8_BITS_1(){
	TRISC = 0x00; //output; // assigned 8bits as output
	while(TRUE){
		RC0 = 0x01;
		__delay_ms(100);
		RC0 = 0x00;
		__delay_ms(100);
	}
}
void OUTPUT_PINS_8_BITS_2(){
	TRISD = 0x00; //output all 8 bit pins 
				//; => TRISD = 0b00000000
	while(TRUE){
		PORTD = 0b00101010;
		__delay_ms(100);
		PORTD = 0b00000000;
		__delay_ms(100);
	}
}
