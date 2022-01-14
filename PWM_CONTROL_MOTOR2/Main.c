#include <pic.h>
#include "PWM_lib.h"
#include "LCD_SCREEN.h"
#include "ADC_lib.h"
#include <stdlib.h>
#define _XTAL_FREQ 20000000
#define TRUE 0x01
#define _4BIT 0x04

void main(void){
	unsigned int i = 0x00;
	float ADC, temperature;
	int a,b,c,d,e,f;
	PWM_SETUP();
	ADC_INIT();
	LCD_SETUP_4BIT();
	LCD_INITIALIZE_4BIT();

	while(TRUE){
		LCD_INSTRUCTION_4BIT(0x80);
		LCD_DISPLAY("Value : ");
		LCD_INSTRUCTION_4BIT(0x89);
	
		ADC = (ADC_READ(4))/(2.046);
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
		
	PWM1_DUTY(a-251);
	__delay_ms(10);
	}
}
