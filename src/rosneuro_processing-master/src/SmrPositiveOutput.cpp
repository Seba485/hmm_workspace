#include "rosneuro_processing/SmrPositiveOutput.h"

namespace rosneuro {

SmrPositiveOutput::SmrPositiveOutput(void) : p_nh_("~") {

	this->subevt_ = this->nh_.subscribe("/events/bus", 1, &SmrPositiveOutput::on_received_neuroevent, this);
	this->subout_ = this->nh_.subscribe("/smr/neuroprediction/raw", 1, &SmrPositiveOutput::on_received_neurooutput, this);

	this->pubout_ = this->nh_.advertise<rosneuro_msgs::NeuroOutput>("/smr/neuroprediction/positive", 1);

	this->cclass_ = 0;
}

SmrPositiveOutput::~SmrPositiveOutput(void) {}

bool SmrPositiveOutput::configure(void) {

	this->p_nh_.param<std::vector<int>>("classes", this->classes_, {769, 770, 771, 773});

	return true;
}

void SmrPositiveOutput::run(void) {


	ros::Rate r(512);

	while(ros::ok()) {

		ros::spinOnce();
		r.sleep();
	}
}

void SmrPositiveOutput::on_received_neuroevent(const rosneuro_msgs::NeuroEvent& msg) {

	int index;
	auto it = std::find(this->classes_.begin(), this->classes_.end(), msg.event);

	if (it != this->classes_.end()) {
		this->cclass_ = *it;
	}


}

void SmrPositiveOutput::on_received_neurooutput(const rosneuro_msgs::NeuroOutput& msg) {

	int index;

	auto it = std::find(msg.decoder.classes.begin(), msg.decoder.classes.end(), this->cclass_);

	if( it == msg.decoder.classes.end() )
		return;
	

	index = std::distance(msg.decoder.classes.begin(), it);
	
	if( msg.softpredict.data.at(index) > 0.5f) {
		this->pubout_.publish(msg);
	}

}


}
