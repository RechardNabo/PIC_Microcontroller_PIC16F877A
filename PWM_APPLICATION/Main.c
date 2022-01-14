#include<pic.h>
#include "PWM_lib.h"
#define TRUE 0x01
#define _XTAL_FREQ 20000000

void main()
{
  unsigned int i=0x00,j=0x00;
  PWM_SETUP();
  TRISD6 = 0x01;
  TRISD7 = 0x01;
  while(TRUE){
     if((RD6 = 0x00)==0x00 && i<1000)
       i=i+0x0A;
     if((RD7 = 0x00)==0x00 && i>0)
       i=i-0x0A;
     PWM1_DUTY(i);
	 __delay_ms(50);
	}
}

