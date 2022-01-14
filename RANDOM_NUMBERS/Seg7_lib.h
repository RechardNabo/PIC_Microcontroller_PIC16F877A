#define A RC0
#define B RC1
#define C RC2
#define D RC3
#define E RC4
#define F RC5
#define G RC6
#define H RC7


void Seg_Init(){
	TRISC0 = 0x00;
	TRISC1 = 0x00;
	TRISC2 = 0x00;
	TRISC3 = 0x00;
	TRISC4 = 0x00;
	TRISC5 = 0x00;
	TRISC6 = 0x00;
	TRISC7 = 0x00;
}

void Seg_Display(int num){
		switch(num){
		//hgfe dcba
		case 0x00:
		PORTC = 0b01000000;
		break;
		
		case 0x01:
		PORTC = 0b01111001;
		break;
		
		case 0x02:
		PORTC = 0b00100100;
		break;
		
		case 0x03:
		PORTC = 0b00110000;
		break;
		
		case 0x04:
		PORTC = 0b00011001;
		break;
		
		case 0x05:
		PORTC = 0b00010010;
		break;
		
		case 0x06:
		PORTC = 0b00000010;
		break;
		
		case 0x07:
		PORTC = 0b01111000;
		break;
		
		case 0x08:
		PORTC = 0b00000000;
		break;
		
		case 0x09:
		PORTC = 0b00010000;
		break;
		
		case 0x0A:
		PORTC = 0b00001000;
		break;
		
		default:
		break;
	}
}
