#define _XTAL_FREQ 20000000
#define TIME 2
void KEYPAD_INIT(){
	TRISB = 0b11111000;
}

unsigned int KEYPAD_KEYS(){
	unsigned int number;
	
	PORTB = 0b11000001;
	if(RB3 == 0x01){
		number = 0x03;
	}
	if(RB4  == 0x01){
		number = 0x06;
	}
	if(RB5 == 0x01){
		number = 0x09;
	}
	__delay_ms(TIME);
	//=================================
	PORTB = 0b10000010;
	if(RB3 == 0x01){
		number = 0x02;
	}
	if(RB4 == 0x01){
		number = 0x05;
	}
	if(RB5 == 0x01){
		number = 0x08;
	}
	if(RB6 == 0x01){
		number = 0x00;
	}
	__delay_ms(TIME);
	//============================
	PORTB = 0b11000100;
	if(RB3 == 0x01){
		number = 0x01;
	}
	if(RB4 == 0x01){
		number = 0x04;
	}
	if(RB5 == 0x01){
		number = 0x07;
	}
	__delay_ms(TIME);
	
	return number;
}