#include <ros/ros.h>
#include "rosneuro_processing/SmrPositiveOutput.h"


int main(int argc, char** argv) {

	// ros initialization
	ros::init(argc, argv, "smrpositiveoutput");

	rosneuro::SmrPositiveOutput smrfilter;
	
	if(smrfilter.configure()== false) {
		ROS_ERROR("Configuration failed");
		return -1;
	}

	smrfilter.run();

	ros::shutdown();

	return 0;
}
