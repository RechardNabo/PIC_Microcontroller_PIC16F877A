#include <pic.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "LCD_SCREEN.h"
#include "Random_Num.h"
#include "ADC_lib.h"
#define TRUE 0x01
#define FALSE 0x00
#define _4BIT 0x04

int main(void){
	float ADC, temperature;
	int a,b,c,d,e,f;
	ADC_INIT();
	LCD_SETUP_4BIT();
	LCD_INITIALIZE_4BIT();
	while(TRUE){
		LCD_INSTRUCTION_4BIT(0x80);
		LCD_DISPLAY("Value : ");
		LCD_INSTRUCTION_4BIT(0x89);
		
		ADC = (ADC_READ(0))/(2.046);
		temperature = ADC * 100;
		a = (int)temperature / 10;
		b = (int)temperature % 10;
		c = a % 10;
		d = a / 10;
		e = d % 10;
		f = d / 10;
		LCD_DATA(f+0x30,_4BIT);
		LCD_DATA(e+0x30,_4BIT);
		LCD_DATA('.',_4BIT);
		LCD_DATA(c+0x30,_4BIT);
		LCD_DATA(b+0x30,_4BIT);
		__delay_ms(10);
	}
	return EXIT_SUCCESS;
}