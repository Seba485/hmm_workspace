#include "hmm_sim/Bar_feedback.h"
#include <ros/ros.h>

using namespace rosneuro;

bar_feedback::bar_feedback(void){ //costructor
        
        //for hmm simulation:
        ros::param::get("~sub_name", this->sub_name_);
		this->sub_bar_ = this->nh_.subscribe(this->sub_name_, 1, &bar_feedback::on_receive_neuro_data, this);
        this->engine_ = new neurodraw::Engine("bar_feedback");
}

void bar_feedback::setup_scene(void){

    this->low_line_ = -0.8;
    this->amplifier_ = 1.5;
    this->pp_ = {0.33, 0.33, 0.33};
    this->fake_amp_ = 100;

    this->zero_line_ = new neurodraw::Line(-10, this->low_line_, 10, this->low_line_, neurodraw::Palette::white);

    ros::param::get("~th",this->th_);
    this->th_line_ = new neurodraw::Line(-10, (this->th_*this->amplifier_)+this->low_line_, 10, (this->th_*this->amplifier_)+this->low_line_, neurodraw::Palette::green);

    //both feet
    this->bf_bar_ = new neurodraw::Rectangle(0.4f, this->fake_amp_, true,  neurodraw::Palette::blue);
    //both_hand
    this->bh_bar_ = new neurodraw::Rectangle(0.4f, this->fake_amp_, true,  neurodraw::Palette::red);
    //rest
    this->r_bar_ = new neurodraw::Rectangle(0.4f, this->fake_amp_, true,  neurodraw::Palette::yellow);

    this->bf_bar_->move(-0.8f, this->low_line_-(this->fake_amp_/2)); 
    this->bh_bar_->move(0.0f, this->low_line_-(this->fake_amp_/2));
    this->r_bar_->move(0.8f, this->low_line_-(this->fake_amp_/2));

    //add the figure to the engine
    this->engine_->add(this->zero_line_);
    this->engine_->add(this->th_line_);
    this->engine_->add(this->bf_bar_);
    this->engine_->add(this->bh_bar_);
    this->engine_->add(this->r_bar_);

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
    this->bh_bar_->move(0.0f, this->low_line_-(this->fake_amp_/2)+(this->pp_[1]*this->amplifier_));
    this->r_bar_->move(0.8f, this->low_line_-(this->fake_amp_/2)+(this->pp_[2]*this->amplifier_));

    //add the figure to the engine
    this->engine_->add(this->bf_bar_);
    this->engine_->add(this->bh_bar_);
    this->engine_->add(this->r_bar_);
}


void bar_feedback::run(void){
    ros::Rate r(512);

    while(ros::ok()){
        ros::spinOnce();
        this->update();
        r.sleep();
    }
    
}