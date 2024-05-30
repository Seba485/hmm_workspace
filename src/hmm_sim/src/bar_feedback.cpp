#include <ros/ros.h>
#include "hmm_sim/Bar_feedback.h"


int main(int argc, char** argv) {

	// ros initialization
	ros::init(argc, argv, "bar_feedback");

	rosneuro::bar_feedback bar;

	bar.setup_scene();

	bar.run();

	ros::shutdown();

	return 0;
}