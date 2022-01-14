#include <pic.h>
#include <stdlib.h>
#include "KEYPAD_lib.h"
#include "LCD_SCREEN.h"
#define _XTAL_FREQ 20000000
#define TRUE 0x01
#define _4BIT 0x04

int main(void){
	KEYPAD_INIT();
	LCD_SETUP_4BIT();
	LCD_INITIALIZE_4BIT();
	while(TRUE){
		LCD_INSTRUCTION_4BIT(0x80);
		LCD_DISPLAY("Value : ");
		LCD_INSTRUCTION_4BIT(0x89);
		LCD_DATA((int)KEYPAD_KEYS()+0x30,_4BIT);
		__delay_ms(10);
	}
	return EXIT_SUCCESS;
}