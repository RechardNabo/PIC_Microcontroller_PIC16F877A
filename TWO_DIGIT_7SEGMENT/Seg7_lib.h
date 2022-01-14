#define A RC0
#define B RC1
#define C RC2
#define D RC3
#define E RC4
#define F RC5
#define G RC6
#define H RC7
#define ANODE 'A'
#define CATHODE 'C'
#define CONNECT TRISC
#define DISPLAY PORTC

void Seg_Init(){
	CONNECT = 0b00000000;
}

void Seg_Display(int num, unsigned char type){
	if(type == CATHODE){
		switch(num){
		//hgfe dcba
		case 0x00:
		DISPLAY = 0b10111111;
		break;
		
		case 0x01:
		DISPLAY = 0b00000110;
		break;
		
		case 0x02:
		DISPLAY = 0b01011011;
		break;
		
		case 0x03:
		DISPLAY = 0b01001111;
		break;
		
		case 0x04:
		DISPLAY = 0b01100110;
		break;
		
		case 0x05:
		DISPLAY = 0b01101101;
		break;
		
		case 0x06:
		DISPLAY = 0b01111101;
		break;
		
		case 0x07:
		DISPLAY = 0b00000111;
		break;
		
		case 0x08:
		DISPLAY = 0b01111111;
		break;
		
		case 0x09:
		DISPLAY = 0b01101111;
		break;
		
		case 0x0A:
		DISPLAY = 0b01110111;
		break;
		
		case 0x0B:
		DISPLAY = 0b01111100;
		break;
		
		case 0x0C:
		DISPLAY = 0b00111001;
		break;
		
		case 0x0D:
		DISPLAY = 0b01011110;
		break;
		
		case 0x0E:
		DISPLAY = 0b01111001;
		break;
		
		case 0x0F:
		DISPLAY = 0b01110001;
		break;
		
		default:
		break;
		}
	}
	if(type == ANODE){
		switch(num){
		//hgfe dcba
		case 0x00:
		DISPLAY = 0b01000000;
		break;
		
		case 0x01:
		DISPLAY = 0b01111001;
		break;
		
		case 0x02:
		DISPLAY = 0b00100100;
		break;
		
		case 0x03:
		DISPLAY = 0b00110000;
		break;
		
		case 0x04:
		DISPLAY = 0b00011001;
		break;
		
		case 0x05:
		DISPLAY = 0b00010010;
		break;
		
		case 0x06:
		DISPLAY = 0b00000010;
		break;
		
		case 0x07:
		DISPLAY = 0b01111000;
		break;
		
		case 0x08:
		DISPLAY = 0b00000000;
		break;
		
		case 0x09:
		DISPLAY = 0b00010000;
		break;
		
		case 0x0A:
		DISPLAY = 0b00001000;
		break;
		
		case 0x0B:
		DISPLAY = 0b00000011;
		break;
		
		case 0x0C:
		DISPLAY = 0b01000110;
		break;
		
		case 0x0D:
		DISPLAY = 0b00100001;
		break;
		
		case 0x0E:
		DISPLAY = 0b00000110;
		break;
		
		case 0x0F:
		DISPLAY = 0b00001110;
		break;
		
		default:
		break;
		}
	}	
}
