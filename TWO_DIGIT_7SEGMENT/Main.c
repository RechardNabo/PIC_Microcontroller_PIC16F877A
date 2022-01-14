#include <pic.h>
#include <stdlib.h>
#include "Seg7_lib.h"
#define _XTAL_FREQ 20000000
#define TRUE 0x01
#define TIME 60

extern void  Seg7_Multiplex(unsigned int num1, unsigned int num2);
int main(){
	Seg_Init();
	TRISD0 = 0x00;
	TRISD1 = 0x00;
	unsigned int num1 = 0x00;
	unsigned int num2 = 0x00;
	unsigned int counter = 0x00;
	while(TRUE){
		
		if(num2 > 9){
			num1 = num1+0x01;
			num2 = 0x00;
			counter = 0x00;
		}
		num2 = counter;
		__delay_ms(1000);
		 Seg7_Multiplex(num1,num2);
		 counter = counter+0x01;
	}
	return EXIT_SUCCESS;
}

extern void  Seg7_Multiplex(unsigned int num1, unsigned int num2){
		Seg_Display(num1,'C');
		RD0 = 0x00;
		RD1 = 0x01;
		__delay_ms(TIME);
		Seg_Display(num2,'C');
		RD0 = 0x01;
		RD1 = 0x00;
		__delay_ms(TIME);
}


