#ifndef EXPONENTIAL_SMOOTHER_H_
#define EXPONENTIAL_SMOOTHER_H_

#include <Eigen/Dense>
#include <ros/ros.h>
#include <pluginlib/class_list_macros.h>
#include <dynamic_reconfigure/server.h>

#include "rosneuro_integrator/GenericIntegrator.h"


namespace rosneuro {
	namespace integrator {

class Exponential_smoother : public GenericIntegrator {

	public:
		Exponential_smoother(void);

		bool configure(int n_class);
		Eigen::VectorXf apply(const Eigen::VectorXf& input);
		bool reset(void);
		void setalpha(float value);

	private:
		Eigen::VectorXf uniform_vector(float value);

	private:
		int n_class_;
		ros::NodeHandle p_nh_;
		float alpha_;
		const float alpha_default_ = 0.98f;
		//Eigen::Vector2f data_;
		Eigen::VectorXf data_;
		
};

PLUGINLIB_EXPORT_CLASS(rosneuro::integrator::Exponential_smoother, rosneuro::integrator::GenericIntegrator)

	}
}

#endif
