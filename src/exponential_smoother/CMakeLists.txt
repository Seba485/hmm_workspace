cmake_minimum_required(VERSION 2.8.3)
project(exponential_smoother)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
set(ROSNEURO_INTEGRATOR_MIN_VERSION "1.0.0")

## Compile as C++11, supported in ROS Kinetic and newer
# add_compile_options(-std=c++11)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
  pluginlib
  roscpp
  rosneuro_msgs
  std_msgs
)
find_package(Eigen3 REQUIRED)
find_package(rosneuro_integrator ${ROSNEURO_INTEGRATOR_MIN_VERSION} REQUIRED)

SET(CMAKE_BUILD_TYPE RelWithDebInfo)

################################################
## Declare ROS messages, services and actions ##
################################################



################################################
## Declare ROS dynamic reconfigure parameters ##
################################################



###################################
## catkin specific configuration ##
###################################

catkin_package(
  INCLUDE_DIRS 
  	include
  LIBRARIES 
  ${PROJECT_NAME}
	
  CATKIN_DEPENDS
    roscpp
    std_msgs
    pluginlib
    rosneuro_msgs
    rosneuro_integrator

  DEPENDS
)

###########
## Build ##
###########

## Specify additional locations of header files
## Your package locations should be listed before other locations
include_directories(${catkin_INCLUDE_DIRS} 
					${rosneuro_integrator_INCLUDE_DIRS}
                    ${EIGEN3_INCLUDE_DIRS}
					include)

add_definitions(${EIGEN3_DEFINITIONS})

add_library(${PROJECT_NAME} src/Exponential_smoother.cpp)

target_link_libraries(${PROJECT_NAME} ${Eigen3_LIBRARIES} 
									  ${rosneuro_integrator_LIBRARIES}
									  ${catkin_LIBRARIES})

add_dependencies(${PROJECT_NAME} 
				 ${catkin_EXPORTED_TARGETS}
				 ${PROJECT_NAME}_gencfg
)



#############
## Install ##
#############

install(TARGETS ${PROJECT_NAME}

	LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
)

install(DIRECTORY include/${PROJECT_NAME}/
        DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION})

install(FILES plugin_exponential_smoother.xml
	DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)
