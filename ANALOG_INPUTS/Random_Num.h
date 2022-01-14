#include <stdlib.h>
#include <stdio.h>
#include <time.h>

int random_number(int min, int max){
		int num = (rand()%(max-min+0x01))+min;
	return num;
}