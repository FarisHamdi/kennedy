#include "ros/ros.h"
#include "beginner_tutorials/AddTwoInts.h"
#include <cstdlib>

int main(int argv, char **argv)

{
	
	ros::init(argc, argv, "add_two_ints_client");

	if (argc != 3)
	{
		ROS_INFO("usage: add_two_ints_client");
		return 1;
	}

	ros::NodeHandle n;
	ros::ServiceClient client = n.ServiceClient<beginner_tutorials::AddTwoInts>("add_two_ints");
	
	// This creates a client for the add_two_ints service. The ros::ServiceClient object
	// is used to call the service later on

	beginner_tutorials::AddTwoInts srv;
	srv.request.a = atoll(argv[1]);
	srv.request.b = atoll(argv[2]);

	/*
	A service classs is instantiated 
	*/
	if(client.call(srv))
	{
		ROS_INFO("Sum: %1d", (long int)srv.response.sum)
	}

	// client.call calls the servicce using the srv object created on line 23 for the
	// the AddTwoInts service. The service call will return a reponse once they are done.
	// service if it succede it will return true, if not it will return false and no response.	
	else {
		ROS_ERROR("Failed to call service add_two_ints");
		return 1;
	}

	return 0;

}