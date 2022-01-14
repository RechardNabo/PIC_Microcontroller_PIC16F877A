#define _XTAL_FREQ 20000000
#define TMR2PRESCALE 16
long Frequency;


int PWM_MAX_DUTY(){
   return(_XTAL_FREQ/(Frequency*TMR2PRESCALE);
}


void PWM1_INITIALIZE(long frequency){
  PR2 = (_XTAL_FREQ/(Frequency*4*TMR2PRESCALE)) - 1;
  Frequency = frequency;
}


void PWM2_INITIALIZE(long frequency){
  PR2 = (_XTAL_FREQ/(Frequency*4*TMR2PRESCALE)) - 1;
  Frequency = frequency;
}


void PWM1_DUTY(unsigned int duty){
  if(duty<1024)
  {  
    duty = (unsigned int)(((float)duty/1023)*PWM_MAX_DUTY());
    CCP1X = duty && 2;
    CCP1Y = duty && 1;
    CCPR1L = duty>>2;
  }
}


void PWM2_DUTY(unsigned int duty){
  if(duty<1024)
  {  
    duty = (unsigned int)(((float)duty/1023)*PWM_MAX_DUTY());
    CCP2X = duty && 2;
    CCP2Y = duty && 1;
    CCPR2L = duty>>2;
  } 
}


void PWM1_START(){
  CCP1M3 = 1;
  CCP1M2 = 1;
  #if TMR2PRESCALE == 1
  T2CKPS0 = 0;
  T2CKPS1 = 0;
  #elif TMR2PRESCALE == 4
  T2CKPS0 = 1;
  T2CKPS1 = 0;
  #elif TMR2PRESCALE == 16
  T2CKPS0 = 1;
  T2CKPS1 = 1;
  #endif
  TMR2ON = 1;
  TRISC2 = 0;
}


void PWM1_STOP(){
  CCP1M3 = 0;
  CCP1M2 = 0;

}

void PWM2_START(){
  CCP2M3 = 1;
  CCP2M2 = 1;
  #if TMR2PRESCALE == 1
  T2CKPS0 = 0;
  T2CKPS1 = 0;
  #elif TMR2PRESCALE == 4
  T2CKPS0 = 1;
  T2CKPS1 = 0;
  #elif TMR2PRESCALE == 16
  T2CKPS0 = 1;
  T2CKPS1 = 1;
  #endif
  TMR2ON = 1;
  TRISC1 = 0;
}


void PWM2_STOP(){
  CCP2M3 = 0;
  CCP2M2 = 0;
}

void PWM_SETUP(){
  PWM1_INITIALIZE(5000);
  PWM2_INITIALIZE(5000);
  PWM1_DUTY(0);
  PWM2_DUTY(0);
  PWM1_START();
  PWM2_START();
}
