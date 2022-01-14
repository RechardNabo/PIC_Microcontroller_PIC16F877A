#define _XTAL_FREQ 20000000
#define TIME 2

unsigned int number = 0;
void KEYPAD_INIT(){
	TRISD = 0b11111000;
}

unsigned int KEYPAD_KEYS(){
	
	PORTD = 0b11000001;
	if(RD3 == 0x01){
		number = 0x03;
	}
	if(RD4  == 0x01){
		number = 0x06;
	}
	if(RD5 == 0x01){
		number = 0x09;
	}
	__delay_ms(TIME);
	//=================================
	PORTD = 0b10000010;
	if(RD3 == 0x01){
		number = 0x02;
	}
	if(RD4 == 0x01){
		number = 0x05;
	}
	if(RD5 == 0x01){
		number = 0x08;
	}
	if(RD6 == 0x01){
		number = 0x00;
	}
	__delay_ms(TIME);
	//============================
	PORTD = 0b11000100;
	if(RD3 == 0x01){
		number = 0x01;
	}
	if(RD4 == 0x01){
		number = 0x04;
	}
	if(RD5 == 0x01){
		number = 0x07;
	}
	__delay_ms(TIME);
	
	return number;
}