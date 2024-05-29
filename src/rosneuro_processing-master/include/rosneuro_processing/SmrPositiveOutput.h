#ifndef ROSNEURO_SMR_POSITIVE_OUTPUT_
#define ROSNEURO_SMR_POSITIVE_OUTPUT_

#include <ros/ros.h>

#include "rosneuro_msgs/NeuroEvent.h"
#include "rosneuro_msgs/NeuroOutput.h"

namespace rosneuro {

class SmrPositiveOutput {

	public:
		SmrPositiveOutput(void);
		virtual ~SmrPositiveOutput(void);


		bool configure(void);
		void run(void);

	private:
		void on_received_neuroevent(const rosneuro_msgs::NeuroEvent& msg);
		void on_received_neurooutput(const rosneuro_msgs::NeuroOutput& msg);


	private:
		ros::NodeHandle nh_;
		ros::NodeHandle p_nh_;

		ros::Subscriber subevt_;
		ros::Subscriber subout_;
		ros::Publisher  pubout_;

		std::vector<int> classes_;

		int cclass_;

};

}

#endif
