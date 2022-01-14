#include <pic.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define _XTAL_FREQ 20000000
#define _4bit_mode 0x04
#define _8bit_mode 0x08


//========[control pins]=========
#define RS RB1
#define RW RB2 
#define EN RB3 
//========[D0 - D7 for data]============= 
#define D0 RB4 
#define D1 RB5 
#define D2 RB6 
#define D3 RB7 
#define D4 RC0 
#define D5 RC1 
#define D6 RC2 
#define D7 RC3 


void LCD_SETUP_4BIT(){
//==================
	TRISB1 = 0x00;
	TRISB2 = 0x00;
	TRISB3 = 0x00;
	//================
	TRISC0 = 0x00;
	TRISC1 = 0x00;
	TRISC2 = 0x00;
	TRISC3 = 0x00;
}


void LCD_SETUP_8BIT(){
//==================
	TRISB1 = 0x00;
	TRISB2 = 0x00;
	TRISB3 = 0x00;
	//================
	TRISB4 = 0x00;
	TRISB5 = 0x00;
	TRISB6 = 0x00;
	TRISB7 = 0x00;
	TRISC0 = 0x00;
	TRISC1 = 0x00;
	TRISC2 = 0x00;
	TRISC3 = 0x00;
}


void LCD_DATA(unsigned char data, int mode){
	unsigned char _data = data;
	int _4bit_[_4bit_mode];
	int _8bit_[_8bit_mode];
	if(mode == 0x04){
		_data = _data>>0x04;
		for(int x =0x00; x < _4bit_mode; x-=-0x01){
			_4bit_[x] = (_data & (0x01<<x))>>x;
		}
			D4 = _4bit_[0x00];
			D5 = _4bit_[0x01];
			D6 = _4bit_[0x02];
			D7 = _4bit_[0x03];
		RS = 0x01;
		RW = 0x00;
		EN = 0x01;
		__delay_ms(2);
		EN = 0x00;
		//=======================================
		_data = data;
		for(int x = 0x00; x< _4bit_mode; x-=-0x01){
			_4bit_[x] = (_data & (0x01<<x))>>x;
		}
			D4 = _4bit_[0x00];
			D5 = _4bit_[0x01];
			D6 = _4bit_[0x02];
			D7 = _4bit_[0x03];
		RS = 0x01;
		RW = 0x00;
		EN = 0x01;
		__delay_ms(2);
		EN = 0x00;
		//=======================================
	}
	if(mode == 0x08){
		_data = data;
		for(int v = 0x00 ; v < _8bit_mode ; v -=-0x01){
        _8bit_[v] = (_data &(0x01 << v))>>v;    //all 8 bit
        }
        	D0 = _8bit_[0x00];
			D1 = _8bit_[0x01];
			D2 = _8bit_[0x02];
			D3 = _8bit_[0x03];
			D4 = _8bit_[0x04];
			D5 = _8bit_[0x05];
			D6 = _8bit_[0x06];
			D7 = _8bit_[0x07];
		RS = 0x01;
		RW = 0x00;
		EN = 0x01;
		__delay_ms(5);
		EN = 0x00;
	}
}

void LCD_INSTRUCTION_4BIT(unsigned char instruction){
	int _4bit_[_4bit_mode];
	unsigned char data = instruction;
		data = data>>0x04;
		for(int x =0x00; x < _4bit_mode; x-=-0x01){
			_4bit_[x] = (data & (0x01<<x))>>x;
		}
			D4 = _4bit_[0x00];
			D5 = _4bit_[0x01];
			D6 = _4bit_[0x02];
			D7 = _4bit_[0x03];
		RS = 0x00;
		RW = 0x00;
		EN = 0x01;
		__delay_ms(2);
		EN = 0x00;
		//========================================
		data = instruction;
		for(int x = 0x00; x< _4bit_mode; x-=-0x01){
			_4bit_[x] = (data & (0x01<<x))>>x;
		}
			D4 = _4bit_[0x00];
			D5 = _4bit_[0x01];
			D6 = _4bit_[0x02];
			D7 = _4bit_[0x03];
		RS = 0x00;
		RW = 0x00;
		EN = 0x01;
		__delay_ms(2);
		EN = 0x00;
		//=======================================	
}

void LCD_INSTRUCTION_8BIT(unsigned char instruction){
	unsigned char data;
	int _8bit_[_8bit_mode];
		data = instruction;
		for(int v = 0x00 ; v < _8bit_mode ; v -=-0x01){
        _8bit_[v] = (data &(0x01 << v))>>v;    //all 8 bit
        }
        	D0 = _8bit_[0x00];
			D1 = _8bit_[0x01];
			D2 = _8bit_[0x02];
			D3 = _8bit_[0x03];
			D4 = _8bit_[0x04];
			D5 = _8bit_[0x05];
			D6 = _8bit_[0x06];
			D7 = _8bit_[0x07];
		RS = 0x00;
		RW = 0x00;
		EN = 0x01;
		__delay_ms(5);
		EN = 0x00;
}

void LCD_INITIALIZE_4BIT(){
	LCD_INSTRUCTION_4BIT(0x02);
	LCD_INSTRUCTION_4BIT(0x28);
	LCD_INSTRUCTION_4BIT(0x0c);
	LCD_INSTRUCTION_4BIT(0x06);
	LCD_INSTRUCTION_4BIT(0x01);

}
void LCD_INITIALIZE_8BIT(){
	LCD_INSTRUCTION_8BIT(0x38);
	LCD_INSTRUCTION_8BIT(0x06);
	LCD_INSTRUCTION_8BIT(0x0c);
	LCD_INSTRUCTION_8BIT(0x01);

}

void LCD_DISPLAY(const unsigned char *string){
	unsigned int length =  strlen(string);
	unsigned int x;
	for(x = 0x00 ;  x < length ; x-=-0x01){
		LCD_DATA(string[x],_4bit_mode);
	}	
}

void LCD_DISPLAY_DIGIT(const unsigned int num){
		LCD_DATA(num,_4bit_mode);
}


