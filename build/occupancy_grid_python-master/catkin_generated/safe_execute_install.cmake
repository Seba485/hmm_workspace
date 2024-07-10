execute_process(COMMAND "/home/sebastiano/hmm_workspace/build/occupancy_grid_python-master/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/sebastiano/hmm_workspace/build/occupancy_grid_python-master/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
