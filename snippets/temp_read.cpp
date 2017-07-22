
#include<iostream>
#include<fstream>

using namespace std;

int main() {

	string line;
	ifstream temp;
	temp.open("/sys/class/thermal/thermal_zone0/temp");
	if (temp.is_open())
	{
		while(getline(temp,line))
		{
			cout << line << '\n';
		}
	}
	else  cout << "unable to open file";

temp.close();
return 0;
}
