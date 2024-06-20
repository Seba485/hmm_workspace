#include "hmm_sim/Bar_feedback.h"
#include <ros/ros.h>

using namespace rosneuro::feedback;

bar_feedback::bar_feedback(void) : param_nh_("~"){ //costructor
        
        this->pub_ = this->nh_.advertise<rosneuro_msgs::NeuroEvent>("/events/bus", 1);
        ros::param::get("~sub_name", this->sub_name_);
		this->sub_bar_ = this->nh_.subscribe(this->sub_name_, 1, &bar_feedback::on_receive_neuro_data, this);
        
        this->engine_ = new neurodraw::Engine("bar_feedback");
        this->engine_->on_keyboard(&bar_feedback::on_keyboard_event, this);
        this->user_quit_ = false;
}

bool bar_feedback::configure(void){
    int mindur_active, maxdur_active, mindur_rest, maxdur_rest;
	std::string modality;

	// Getting classes
	if(this->param_nh_.getParam("classes", this->classes_) == false) {
		ROS_ERROR("Parameter 'classes' is mandatory");
		return false;
	} else if(this->classes_.size() != 2 && this->classes_.size() != 3) {
		ROS_ERROR("The provided number of classes must be 2 o 3, now it is: %ld", this->classes_.size());
		return false;
	}

	// insert the clases code in the structure
	this->class_code_.None = 0;
	this->class_code_.TimeOut = -1;
	this->class_code_.FirstClass = this->classes_[0];
	this->class_code_.SecondClass = this->classes_[1];
	this->class_code_.ThirdClass = this->classes_[2];

	// Getting threshold
	if(this->param_nh_.getParam("bar_th", this->th_) == false) {
		ROS_ERROR("Parameter 'bar_th' is mandatory");
		return false;
    } else if (this->th_.size() != this->classes_.size()){
		ROS_ERROR("There has to be one treshold per class");
		return false;
	}

	// Getting trials per class
	if(this->param_nh_.getParam("trials", this->trials_per_class_) == false) {
		ROS_ERROR("Parameter 'trials' is mandatory");
		return false;
	} else if(this->trials_per_class_.size() != this->classes_.size()) { 
		ROS_ERROR("Number of trials per class must be provided for each class");
		return false;
	}
	
	// Getting modality 
	if(this->param_nh_.getParam("modality", modality) == false) {
		ROS_ERROR("Parameter 'modality' is mandatory");
		return false;
	}
	
	if(modality.compare("calibration") == 0) {
		this->modality_ = Modality::Calibration;
	} else if(modality.compare("evaluation") == 0) {
		this->modality_ = Modality::Evaluation;
	} else if(modality.compare("continuous") == 0) {
		this->modality_ = Modality::Continuous;
	} else {
		ROS_ERROR("Unknown modality provided");
		return false;
	}

	// Getting show on rest
	ros::param::param("~show_on_rest", this->show_on_rest_, true);

	// Getting duration parameters
	ros::param::param("~duration/begin", 		   this->duration_.begin, 		    5000);
	ros::param::param("~duration/start", 		   this->duration_.start, 		    1000);
	ros::param::param("~duration/fixation", 	   this->duration_.fixation, 	    2000);
	ros::param::param("~duration/cue", 			   this->duration_.cue, 		    1000);
	ros::param::param("~duration/feedback_min",    this->duration_.feedback_min,    4000);
	ros::param::param("~duration/feedback_max",    this->duration_.feedback_max,    5500);
	ros::param::param("~duration/boom", 		   this->duration_.boom, 		    1000);
	ros::param::param("~duration/timeout", 		   this->duration_.timeout, 	   10000);
	ros::param::param("~duration/timeout_on_rest", this->duration_.timeout_on_rest, 6000);
	ros::param::param("~duration/iti", 			   this->duration_.iti, 		   	 100);
	ros::param::param("~duration/end", 			   this->duration_.end, 		  	2000);

	if(this->modality_ == Modality::Calibration) { 
		mindur_active = this->duration_.feedback_min;
		maxdur_active = this->duration_.feedback_max;
		mindur_rest   = this->duration_.feedback_min;
        maxdur_rest   = this->duration_.feedback_max;
	} else {
		mindur_active = this->duration_.timeout;
		maxdur_active = this->duration_.timeout;
		mindur_rest   = this->duration_.timeout_on_rest;
        maxdur_rest   = this->duration_.timeout_on_rest;
	}

	// forming the trial sequence on the base of the parameters
	this->trialsequence_.addclass(this->classes_.at(0), this->trials_per_class_.at(0), mindur_active, maxdur_active); 
	this->trialsequence_.addclass(this->classes_.at(1), this->trials_per_class_.at(1), mindur_active, maxdur_active);
	if(this->classes_.size() == 3) 
		this->trialsequence_.addclass(this->classes_.at(2), this->trials_per_class_.at(2), mindur_rest, maxdur_rest);

	
	ROS_INFO("Total number of classes: %ld", this->classes_.size());
	ROS_INFO("Total number of trials:  %d", this->trialsequence_.size());
	ROS_INFO("Trials have been randomized");

    //after the config setup the scene
    this->setup_scene();

	return true;

}

//set up the scene with all the shapes
void bar_feedback::setup_scene(void){

    this->low_line_ = -0.8;
    this->amplifier_ = 1.4;
    this->reset_pp();
    this->fake_amp_ = 100;

    //base line
    this->zero_line_ = new neurodraw::Line(-10, this->low_line_, 10, this->low_line_, neurodraw::Palette::white);

    //theshold line
    this->th_line_bh = new neurodraw::Line(-1.2, (this->th_[0]*this->amplifier_)+this->low_line_, -0.4, (this->th_[0]*this->amplifier_)+this->low_line_, neurodraw::Palette::blue);
	this->th_line_bf = new neurodraw::Line(+0.4, (this->th_[1]*this->amplifier_)+this->low_line_, +1.2, (this->th_[1]*this->amplifier_)+this->low_line_, neurodraw::Palette::red);
	this->th_line_r = new neurodraw::Line(-0.4, (this->th_[2]*this->amplifier_)+this->low_line_, +0.4, (this->th_[2]*this->amplifier_)+this->low_line_, neurodraw::Palette::yellow);

    //rigth event hit
    this->rigth_line_ = new neurodraw::Rectangle(20, 0.15f, true,  neurodraw::Palette::green);

    //wrong event hit
    this->wrong_line_ = new neurodraw::Rectangle(20, 0.15f, true,  neurodraw::Palette::darkred);

    //both feet
    this->bf_bar_ = new neurodraw::Rectangle(0.4f, this->fake_amp_, true,  neurodraw::Palette::blue);
    //both_hand
    this->bh_bar_ = new neurodraw::Rectangle(0.4f, this->fake_amp_, true,  neurodraw::Palette::red);
    //rest
    this->r_bar_ = new neurodraw::Rectangle(0.4f, this->fake_amp_, true,  neurodraw::Palette::yellow);

    //circle
    this->circle_  = new neurodraw::Circle(0.15f, true, neurodraw::Palette::white);

    //fixation cross
    this->cross_   = new neurodraw::Cross(0.3f, 0.05f);


    this->bf_bar_->move(-0.8f, this->low_line_-(this->fake_amp_/2)); 
    this->bh_bar_->move(0.8f, this->low_line_-(this->fake_amp_/2));
    this->r_bar_->move(0.0f, this->low_line_-(this->fake_amp_/2));

    this->circle_->move(0.0f, 0.8f);
    this->cross_->move(0.0f, 0.8f);
    this->rigth_line_->move(0.0f, (0.95*this->amplifier_)+this->low_line_-0.05);
    this->wrong_line_->move(0.0f, (0.95*this->amplifier_)+this->low_line_-0.05);

    //add the figure to the engine
    this->engine_->add(this->zero_line_);
    this->engine_->add(this->th_line_bh);
	this->engine_->add(this->th_line_bf);
	this->engine_->add(this->th_line_r);
    this->engine_->add(this->bf_bar_);
    this->engine_->add(this->bh_bar_);
    this->engine_->add(this->r_bar_);
    this->engine_->add(this->circle_);
    this->engine_->add(this->cross_);
    this->engine_->add(this->rigth_line_);
    this->engine_->add(this->wrong_line_);

    //hide event related shapes
    this->circle_->hide();
    this->cross_->hide();
    this->rigth_line_->hide();
    this->wrong_line_->hide();

    this->update();

    //Rectangle::Rectangle(float width, float hight, bool is_filled = false, Color color = Palette::white);
    //Line::Line(float x1, float y1, float x2, float y2, Color color = Palette::white);
}

void bar_feedback::on_receive_neuro_data(const rosneuro_msgs::NeuroOutput& msg){
    this->pp_ = msg.softpredict.data;
    this->update();
}

void bar_feedback::update(void){

    this->bf_bar_->move(-0.8f, this->low_line_-(this->fake_amp_/2)+(this->pp_[0]*this->amplifier_)); 
    this->bh_bar_->move(0.8f, this->low_line_-(this->fake_amp_/2)+(this->pp_[1]*this->amplifier_));
    this->r_bar_->move(0.0f, this->low_line_-(this->fake_amp_/2)+(this->pp_[2]*this->amplifier_));
}

void bar_feedback::reset_pp(void){
    this->pp_ = {0.33, 0.33, 0.33};
}

void bar_feedback::on_keyboard_event(const neurodraw::KeyboardEvent& event){
    if(event.state == 0)
		return;
    // if esc is pressed the window is closed
	if (event.sym == neurodraw::EventKey::ESCAPE){
	   		this->engine_->quit();
		 	this->user_quit_ = true;
    }
}

void bar_feedback::sleep(int msecs) {
	std::this_thread::sleep_for(std::chrono::milliseconds(msecs));
}

//set the event end send it to the message bus
void bar_feedback::setevent(int event) {

	this->event_msg_.header.stamp = ros::Time::now();
	this->event_msg_.event = event;
	this->pub_.publish(this->event_msg_);
}

//fixation cross related function
void bar_feedback::show_fixation(void) {
	this->cross_->show();
}
void bar_feedback::hide_fixation(void) {
	this->cross_->hide();
}

//cue circle related function
void bar_feedback::show_cue(int trialclass) {

	neurodraw::Color color = neurodraw::Palette::dimgray;

	
	if(trialclass==this->class_code_.FirstClass){
		color = neurodraw::Palette::blue;
	}else if(trialclass==this->class_code_.SecondClass){
		color = neurodraw::Palette::red;
	}else if(trialclass==this->class_code_.ThirdClass){
		color = neurodraw::Palette::yellow;
	}else{
		ROS_WARN("Unknown direction required. Cue color is not set");
	}

	this->circle_->set_color(color);
	this->circle_->show();
}
void bar_feedback::hide_cue(void){
    this->circle_->hide();
}

//trial result
void bar_feedback::show_boom(int boomevent){
    if (boomevent==Events::Miss){
        this->wrong_line_->show();
    }else if (boomevent==Events::Hit){
        this->rigth_line_->show();
    }
}
void bar_feedback::hide_boom(void){
    this->rigth_line_->hide();
    this->wrong_line_->hide();
}

void bar_feedback::run(void){
	if(this->modality_==Modality::Continuous){
		this->run_continuous();
	} else {
		this->run_evaluation();
	}
}

void bar_feedback::run_evaluation(void){

    int 	  trialnumber;
	int 	  trialclass;
	int 	  trialduration;
	int 	  boomevent;
	int       targethit;
	ros::Rate r(this->rate_);

    ROS_INFO("Protocol started");
	
	// Begin
	this->sleep(this->duration_.begin);

    for(auto it = this->trialsequence_.begin(); it != this->trialsequence_.end(); ++it) { // for all the trial in the sequence
		
		// Getting trial information
		trialnumber    = (it - this->trialsequence_.begin()) + 1;
		trialclass     = (*it).classid; //eventcue of the trial
		trialduration  = (*it).duration; //duration of the trial
		targethit      = this->class_code_.None; 

		ROS_INFO("Trial %d/%d (class: %d | duration: %d ms)", trialnumber, this->trialsequence_.size(), trialclass, trialduration);
		this->setevent(Events::Start);
		this->sleep(this->duration_.start);
		this->setevent(Events::Start + Events::Off);

		if(ros::ok() == false || this->user_quit_ == true) break;
		
		// Fixation
		this->setevent(Events::Fixation);
		this->show_fixation();       //all the figure shown are setted in SingleWheel.cpp
		this->sleep(this->duration_.fixation);
		this->hide_fixation();
		this->setevent(Events::Fixation + Events::Off);

		if(ros::ok() == false || this->user_quit_ == true) break;

		// Cue
		this->setevent(trialclass);
		this->show_cue(trialclass);
		this->sleep(this->duration_.cue);
		this->setevent(trialclass + Events::Off);
		
		if(ros::ok() == false || this->user_quit_ == true) break;

		// Continuous Feedback
		this->timer_.tic(); //start of the timer

		// Consuming old messages
		ros::spinOnce();

		// Send reset event
		this->setevent(Events::CFeedback);
		this->reset_pp();
		
		// Set threshold
		//int th_idx = std::distance(this->classes_.begin(), std::find(this->classes_.begin(), this->classes_.end(), trialclass));		

        // check for the surpass of the treshold
		while(ros::ok() && this->user_quit_ == false && targethit == this->class_code_.None) {

            this->update();

            if( this->pp_[0]>= this->th_[0]) {
                targethit = this->class_code_.FirstClass;
                break;
            } else if( this->pp_[1]>= this->th_[1]) {
                targethit = this->class_code_.SecondClass;
                break;
            } else if( this->pp_[2]>= this->th_[2]) {
                targethit = this->class_code_.ThirdClass;
                break;
            } else if(this->timer_.toc() >= trialduration) {
                targethit = this->class_code_.TimeOut;
                break;
            }
	
			r.sleep();
			ros::spinOnce();
		}
		this->setevent(Events::CFeedback + Events::Off);
		if(ros::ok() == false || this->user_quit_ == true) break;
		

		// Boom: if the target hit is the rigth one
		boomevent = trialclass == targethit ? Events::Hit : Events::Miss;
		this->setevent(boomevent);
		this->show_boom(boomevent);
		this->sleep(this->duration_.boom);
		this->hide_boom();
		this->setevent(boomevent + Events::Off);

		//this->setevent(Events::Start + Events::Off);

		switch(boomevent) {
			case Events::Hit:
				ROS_INFO("Target hit");
				break;
			case Events::Miss:
				ROS_INFO("Target miss");
				break;
		}

		if(ros::ok() == false || this->user_quit_ == true) break;

		// Inter trial interval
		this->hide_cue();
		this->reset_pp();
        this->update();
		this->sleep(this->duration_.iti);

		if(ros::ok() == false || this->user_quit_ == true) break;

	}

	// End
	if(user_quit_ == false)
		this->sleep(this->duration_.end);
	ROS_INFO("Protocol ended");
    
}

void bar_feedback::run_continuous(void){
	ros::Rate r(512);

    while(ros::ok() && this->user_quit_==false){
        ros::spinOnce();
        this->update();
        r.sleep();
    }
}
