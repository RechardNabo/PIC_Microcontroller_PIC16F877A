#include <htc.h>
#include <pic.h>
#include <stdio.h>
#include <stdlib.h>
#include "Seg7_lib.h"
#include "Rand_num.h"
#define _XTAL_FREQ 20000000
#define TRUE 0x01


int main(void){
	Seg_Init();
	while(TRUE){
		Seg_Display(Random_num(1,9));
		__delay_ms(500);
	}
	return EXIT_SUCCESS;
}
