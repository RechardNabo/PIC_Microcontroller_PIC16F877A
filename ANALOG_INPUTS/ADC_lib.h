void ADC_INIT(){
   ADCON0 = 0x41;
   ADCON1 = 0xC0;
}

unsigned int ADC_READ(unsigned char channel){
   if(channel > 7)
     return 0; 

   ADCON0 &= 0xC5;
   ADCON0 |= channel<<3;
   __delay_ms(2);
   GO_nDONE = 1;
   while(GO_nDONE);
   return ((ADRESH<<8)+ADRESL);
}
 