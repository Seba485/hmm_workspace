#ifndef BAR_FEEDBACK_H_
#define BAR_FEEDBACK_H_

#include <numeric>
#include <array>
#include <random>
#include <ros/ros.h>

#include "neurodraw/Ring.h"
#include "neurodraw/Arc.h"
#include "neurodraw/Cross.h"
#include "neurodraw/Line.h"
#include "neurodraw/Rectangle.h"
#include "neurodraw/Engine.h"
#include "neurodraw/Palette.h"
#include "neurodraw/EventKey.h"

#include <cmath>

#include <rosneuro_msgs/NeuroOutput.h>

namespace rosneuro {


    class bar_feedback {

        public:
            bar_feedback(void); //constructor
            void setup_scene(void);
            void run(void);
        
        protected:
            ros::NodeHandle     nh_;
            neurodraw::Engine*         engine_; //usefull to andle the figures with callbaks
            std::string             sub_name_;
            float               th_;

            void on_receive_neuro_data(const rosneuro_msgs::NeuroOutput& msg);
            void update(void);

        private:
            int fake_amp_;
            ros::Subscriber 	    sub_bar_;
            neurodraw::Line*          zero_line_;
            neurodraw::Line*          th_line_;
            neurodraw::Rectangle*    bf_bar_; //both hand bar
            neurodraw::Rectangle*    bh_bar_; //both hand bar
            neurodraw::Rectangle*    r_bar_;  //rest bar
            float low_line_;
            float amplifier_;
            std::vector<float> pp_;
    };



}

#endif
