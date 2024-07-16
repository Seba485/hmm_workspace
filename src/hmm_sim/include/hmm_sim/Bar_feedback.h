#ifndef BAR_FEEDBACK_H_
#define BAR_FEEDBACK_H_

#include <numeric>
#include <array>
#include <random>
#include <ros/ros.h>
#include <cmath>

#include "neurodraw/Ring.h"
#include "neurodraw/Arc.h"
#include "neurodraw/Cross.h"
#include "neurodraw/Circle.h"
#include "neurodraw/Line.h"
#include "neurodraw/Rectangle.h"
#include "neurodraw/Engine.h"
#include "neurodraw/Palette.h"
#include "neurodraw/EventKey.h"

#include "rosneuro_feedback_wheel/TrialSequence.h"
#include "rosneuro_feedback_wheel/Autopilot.h"

#include <rosneuro_msgs/NeuroOutput.h>
#include <rosneuro_msgs/NeuroEvent.h>
#include <hmm_sim/action_status.h>

namespace rosneuro {
    namespace feedback{

        struct Events {
        static const int Rest       = 783;
        static const int Start 		= 1;
        static const int Fixation 	= 786;
        static const int CFeedback 	= 781;
        static const int Hit 		= 897;
        static const int Miss 		= 898;
        static const int Off 		= 32768;
        };

        struct Classes{
            int FirstClass;
            int SecondClass;
            int ThirdClass;
            int None; //used for the target hit
            int TimeOut; //used for the target hit
        };

        struct Duration {
            int begin;
            int start;
            int fixation;
            int cue;
            int feedback_min;
            int feedback_max;
            int boom;
            int timeout;
            int timeout_on_rest;
            int iti;
            int end;
        };

        class bar_feedback {

            public:
                bar_feedback(void); //constructor
                enum class Modality {Calibration = 0, Evaluation, Continuous, Robot_sim};
                bool configure(void);
                void run(void);
            
            protected:
                void on_receive_neuro_data(const rosneuro_msgs::NeuroOutput& msg);
                void on_receive_robot_status(const hmm_sim::action_status& msg);
                void publish_command_and_wait(std::vector<int> hard_classification, int class_code);
                void update(void);
                void setup_scene(void);
                virtual void on_keyboard_event(const neurodraw::KeyboardEvent& event);
                void sleep(int msec);
                void setevent(int event);
                void reset_pp(void);
                void run_continuous(void);
                void run_evaluation(void);
                void run_robot_sim(void);

                void show_fixation(void);
                void hide_fixation(void);
                void show_cue(int trialclass);
                void hide_cue(void);
                void show_boom(int boomevent);
                void hide_boom(void);

            private:
                int     fake_amp_;
                float   low_line_;
                float   amplifier_;

                bool show_on_rest_;
                bool action_flag_ = false;
                std::string T_mode_ = "null";
                std::vector<int> hard_classification = {0, 0, 0};

                ros::NodeHandle         nh_;
                ros::NodeHandle         param_nh_;
                neurodraw::Engine*      engine_; //usefull to andle the figures with callbaks
                
                std::string         sub_name_;
                ros::Subscriber 	sub_bar_;
                ros::Subscriber 	sub_status_;
                ros::Publisher      pub_event;
                ros::Publisher      pub_hard;
                ros::Publisher      pub_cue_class;

                rosneuro_msgs::NeuroEvent  event_msg_;
                rosneuro_msgs::NeuroOutput inputmsg_;
                rosneuro_msgs::NeuroOutput bar_hard_;
                rosneuro_msgs::NeuroOutput cue_class_;


                neurodraw::Line*         zero_line_;
                neurodraw::Line*         th_line_bf;
                neurodraw::Line*         th_line_bh;
                neurodraw::Line*         th_line_r;
                neurodraw::Rectangle*    rigth_line_;
                neurodraw::Rectangle*    wrong_line_;
                neurodraw::Rectangle*    bf_bar_; //both hand bar
                neurodraw::Rectangle*    bh_bar_; //both hand bar
                neurodraw::Rectangle*    r_bar_;  //rest bar
                neurodraw::Cross* 		 cross_;
		        neurodraw::Circle*		 circle_;

                std::vector<float>  pp_;
                std::vector<int>    classes_;
                int                 ref_class_;
                int                 ref_idx;
                int                 rest_idx;
                int                 other_idx;
                std::vector<int>    trials_per_class_;
                std::vector<float>  th_;
                bool                user_quit_;
                Duration            duration_;
                Classes             class_code_;
                Modality            modality_;
                TrialSequence       trialsequence_;

                // Timer
		        neurochrono::timer_msecs timer_;

                const float rate_ = 100.0f;
        };

    };

}

#endif
