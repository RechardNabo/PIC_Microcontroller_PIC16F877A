#include <pic.h>
#include <stdlib.h>
#include <stdio.h>
#include "Seg7_lib.h"
#define TRUE 0x01
#define _XTAL_FREQ 20000000
void count();
void display(int num);

int main(void){
	int counter = 0x00;
	Seg_Init();
	while(TRUE){
		Seg_Display(15);
	}
	return EXIT_SUCCESS;
}

