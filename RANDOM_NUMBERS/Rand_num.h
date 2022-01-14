#include <stdlib.h>
#include <time.h>
#include <stdio.h>

int Random_num(const unsigned int min ,const unsigned int max){
	unsigned int number;
	number = ((unsigned int)rand()%(max-min+1))+min;
	return number;
}