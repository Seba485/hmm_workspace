#include "exponential_smoother/Exponential_smoother.h"

namespace rosneuro {
	namespace integrator {

        Exponential_smoother::Exponential_smoother(void) : p_nh_("~") {
            this->setname("exponential_smoother");
        }

        bool Exponential_smoother::configure(int n_class) {

            this->n_class_ = n_class;
            this->data_ = this->uniform_vector(1/float(this->n_class_));
            
            float alpha;
            
            this->p_nh_.param<float>("alpha", alpha, this->alpha_default_);
            this->setalpha(alpha);

            return true;
        }

        Eigen::VectorXf Exponential_smoother::apply(const Eigen::VectorXf& input) {

            /*if(input.size() != 2) {
                ROS_WARN("[%s] Input size is not 2: only 2-class input is allowed", this->name().c_str()); 
                return this->data_;
            }*/

            this->data_ = this->data_ * this->alpha_ + input * (1 - this->alpha_);

            /* Eigen::VectorXf vec = this->data_; //to check framework output
            int a = 0;
            if(std::abs(vec.sum()-1)<0.01){
                a = 1;
            }
            std::stringstream oss;
            oss << "[";
            for (size_t i = 0; i < vec.size(); i++) {
                oss << vec[i];
                if (i != vec.size() - 1) {
                    oss << ", ";
                }
            }
            oss << "]";
            std::string str_vect = oss.str();
            const char * str_vect_ = str_vect.c_str();

            ROS_INFO("%s nomalized: %d", str_vect_, a); */

            return this->data_;
        }

        bool Exponential_smoother::reset(void) {

            this->data_ = this->uniform_vector(1/float(this->n_class_));
            return true;
        }

        Eigen::VectorXf Exponential_smoother::uniform_vector(float value) {
            //return Eigen::Vector2f::Constant(value);
            Eigen::VectorXf framework_vect = Eigen::VectorXf::Ones(this->n_class_);

            /*Eigen::VectorXf vec = (framework_vect*value); //to check how the framework vector is reset
            std::stringstream oss;
            oss << "[";
            for (size_t i = 0; i < vec.size(); i++) {
                oss << vec[i];
                if (i != vec.size() - 1) {
                    oss << ", ";
                }
            }
            oss << "]";
            std::string str_vect = oss.str();
            const char * str_vect_ = str_vect.c_str();

            ROS_INFO("%s", str_vect_);*/

            return framework_vect*value;
        }

        void Exponential_smoother::setalpha(float value) {

            if(value < 0.0f | value > 1.0f) {
                this->alpha_ = this->alpha_default_;
                ROS_INFO("[%s] Alpha value is not legal (alpha=%f). Alpha set to the default value (alpha=%f)",
                        this->name().c_str(), value, this->alpha_);
            } else {
                this->alpha_ = value;
                ROS_INFO("[%s] Alpha set to %f", this->name().c_str(), this->alpha_);
            }
        }


	}
}