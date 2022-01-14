#include <pic.h>
#include <stdio.h>
#define _XTAL_FREQ 20000000
#define TRUE 0x01

void main(){
	TRISB = 0b11111101;
	while(TRUE){
		RB1 = 0x01;	
	}
}