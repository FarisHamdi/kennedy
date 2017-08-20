#include<wiringPi.h>
#include<wiringPiSPI.h>
#include<stdio.h>
#include<stdint.h>
#include<cstdlib>
#include<cstring>
#include<iostream>


using namespace std;

int readadc (uint8_t adcnum){

	uint8_t buff[3];
	int adc;

	if((adcnum > 7) || (adcnum < 0))
		return 0;

	buff[0] = 1;
	buff[1] = (8+adcnum) << 4;
	buff[2] = 0;

	wiringPiSPIDataRW(1, buff, 3);
	adc = ((buff[1]&3) << 8) + buff[2];
	return adc;
}

int main (int argc, char *argv[])
{
	int i, chan;
	int wiringPiSetup();

	uint32_t ambtemp;

	wiringPiSPISetup(1, 1000000);

	if (wiringPiSPISetup(0,1000000) < 0)
		return -1;

	if (argc>1)
		chan = atoi(argv[1]);
	else
		chan = 2;

	while(1)
	{
		ambtemp = readadc(chan);
		delay(10);
		printf("chan %d:  %d \n", chan, ambtemp);
	}

	return 0;
}

