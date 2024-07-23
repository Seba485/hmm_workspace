# Install script for directory: /home/sebastiano/hmm_workspace/src/rosneuro_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/sebastiano/hmm_workspace/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RelWithDebInfo")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rosneuro_msgs/msg" TYPE FILE FILES
    "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataFloat.msg"
    "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInt32.msg"
    "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInfo.msg"
    "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroHeader.msg"
    "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroFrame.msg"
    "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroEvent.msg"
    "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDecoder.msg"
    "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroOutput.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rosneuro_msgs/srv" TYPE FILE FILES "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/srv/GetAcquisitionInfo.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rosneuro_msgs/cmake" TYPE FILE FILES "/home/sebastiano/hmm_workspace/build/rosneuro_msgs/catkin_generated/installspace/rosneuro_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/sebastiano/hmm_workspace/devel/include/rosneuro_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/sebastiano/hmm_workspace/devel/share/roseus/ros/rosneuro_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/sebastiano/hmm_workspace/devel/share/common-lisp/ros/rosneuro_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/sebastiano/hmm_workspace/devel/share/gennodejs/ros/rosneuro_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/sebastiano/hmm_workspace/devel/lib/python3/dist-packages/rosneuro_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/sebastiano/hmm_workspace/devel/lib/python3/dist-packages/rosneuro_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/sebastiano/hmm_workspace/build/rosneuro_msgs/catkin_generated/installspace/rosneuro_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rosneuro_msgs/cmake" TYPE FILE FILES "/home/sebastiano/hmm_workspace/build/rosneuro_msgs/catkin_generated/installspace/rosneuro_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rosneuro_msgs/cmake" TYPE FILE FILES
    "/home/sebastiano/hmm_workspace/build/rosneuro_msgs/catkin_generated/installspace/rosneuro_msgsConfig.cmake"
    "/home/sebastiano/hmm_workspace/build/rosneuro_msgs/catkin_generated/installspace/rosneuro_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rosneuro_msgs" TYPE FILE FILES "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/package.xml")
endif()

