#include <wiringPi.h>

int main()

{
        int enable = 26;int ms1 = 16; int ms2 = 13; int ms3 = 12;
	int rst = 6; int sleep = 5;int step = 25; int dir = 24;

        wiringPiSetupGpio();

	pinMode(enable, OUTPUT); pinMode(rst, OUTPUT);
	pinMode(sleep, OUTPUT); pinMode(step, OUTPUT);
	pinMode(dir, OUTPUT); pinMode(ms1, OUTPUT);
	pinMode(ms2, OUTPUT); pinMode(ms2, OUTPUT);

	digitalWrite(ms1, LOW); digitalWrite(ms2, LOW);
	digitalWrite(dir, LOW); digitalWrite(ms3, LOW);
	digitalWrite(sleep, HIGH); digitalWrite(enable, LOW);
	digitalWrite(rst, HIGH);
        for(;;)
        {
                digitalWrite(step,HIGH); delay(1);
                digitalWrite(step,LOW); delay(1);
        }

return 0;
}


