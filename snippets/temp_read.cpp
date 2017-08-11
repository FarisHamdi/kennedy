
#include<iostream>
#include<fstream>
#include<chrono>
#include<thread>

using namespace std;

int main() {

	string line;
	ifstream temp;
	temp.open("/sys/class/thermal/thermal_zone0/temp");
	if (temp.is_open())
	{
		while(true)
		{
			if(!temp.is_open())
			{
				temp.open("/sys/class/thermal/thermal_zone0/temp");
			}
			this_thread::sleep_for(std::chrono::milliseconds(1000));
			getline(temp, line);
			float tempfloat = stof(line.c_str());
			cout << tempfloat/1000 << endl;
			temp.close();
		}
	}
	else  cout << "unable to open file";

temp.close();
return 0;
}
