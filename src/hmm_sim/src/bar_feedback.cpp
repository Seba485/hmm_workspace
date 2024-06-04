#include <ros/ros.h>
#include "hmm_sim/Bar_feedback.h"


int main(int argc, char** argv) {

	// ros initialization
	ros::init(argc, argv, "bar_feedback");

	rosneuro::feedback::bar_feedback bar;

	if (bar.configure()==false){
		ros::shutdown();
		return 0;
	}

	bar.run();

	ros::shutdown();

	return 0;
}