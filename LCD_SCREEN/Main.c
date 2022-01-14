#include <pic.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "LCD_SCREEN.h"
#define _XTAL_FREQ 20000000
#define _4bit_mode 0x04
#define _8bit_mode 0x08
#define TRUE 0x01



int main(void){
	LCD_SETUP_8BIT();
	LCD_INITIALIZE_8BIT();
	while(TRUE){
	LCD_INSTRUCTION_8BIT(0x80);
	LCD_DISPLAY("Nhlanhla");
	__delay_ms(10);
	}
	return EXIT_SUCCESS;
}


