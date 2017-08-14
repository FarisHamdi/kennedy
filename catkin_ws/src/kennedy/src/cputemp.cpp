#include "ros/ros.h"
#include "std_msgs/Float32.h"   //ROS dependencies

#include <iostream>
#include <fstream>
#include <chrono>
#include <thread> 			//cputemp specific dependencies

using namespace std;

// This pulblisher is based on the ROS wiki tutorial publishers and the
// template in the beginner tutorials folder

int main(int argc, char **argv)
{
	ros::init(argc, argv, "cputemp");
	ros::NodeHandle n;
	ros::Publisher cputemp_pub = n.advertise<std_msgs::Float32>("cpu_temp", 1000);
	ros::Rate loop_rate(5);

	int count = 0;

	float tempfloat; 
	string line;
	ifstream temp;
	temp.open("/sys/class/thermal/thermal_zone0/temp");


	while (ros::ok())
	{
		if(temp.is_open())
		{
			getline(temp, line);
			float tempfloat = stof(line.c_str())/1000;
			cout << tempfloat << endl;
			temp.close();
		}
		else {
			temp.open("/sys/class/thermal/thermal_zone0/temp");
			this_thread::sleep_for(std::chrono::milliseconds(1000));
			getline(temp, line);
			tempfloat = stof(line.c_str());
			cout << tempfloat << endl;
			temp.close();
		}

		std_msgs::Float32 cputemp;
		stringstream ss;

		ss << count << " The CPU temperature is: " << tempfloat << " C";
		cputemp.data = tempfloat;

		ROS_INFO("%f", cputemp.data);
		cputemp_pub.publish(cputemp);

		ros::spinOnce();
		loop_rate.sleep();
		++count;

		
	}

	temp.close();
	return 0;

}


 