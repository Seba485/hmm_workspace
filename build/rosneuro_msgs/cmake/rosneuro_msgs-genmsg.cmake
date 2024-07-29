# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "rosneuro_msgs: 8 messages, 1 services")

set(MSG_I_FLAGS "-Irosneuro_msgs:/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(rosneuro_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataFloat.msg" NAME_WE)
add_custom_target(_rosneuro_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rosneuro_msgs" "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataFloat.msg" "rosneuro_msgs/NeuroDataInfo"
)

get_filename_component(_filename "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInt32.msg" NAME_WE)
add_custom_target(_rosneuro_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rosneuro_msgs" "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInt32.msg" "rosneuro_msgs/NeuroDataInfo"
)

get_filename_component(_filename "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInfo.msg" NAME_WE)
add_custom_target(_rosneuro_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rosneuro_msgs" "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInfo.msg" ""
)

get_filename_component(_filename "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroHeader.msg" NAME_WE)
add_custom_target(_rosneuro_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rosneuro_msgs" "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroHeader.msg" ""
)

get_filename_component(_filename "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroFrame.msg" NAME_WE)
add_custom_target(_rosneuro_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rosneuro_msgs" "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroFrame.msg" "rosneuro_msgs/NeuroDataInt32:rosneuro_msgs/NeuroHeader:rosneuro_msgs/NeuroDataInfo:rosneuro_msgs/NeuroDataFloat:std_msgs/Header"
)

get_filename_component(_filename "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroEvent.msg" NAME_WE)
add_custom_target(_rosneuro_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rosneuro_msgs" "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroEvent.msg" "rosneuro_msgs/NeuroHeader:std_msgs/Header"
)

get_filename_component(_filename "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDecoder.msg" NAME_WE)
add_custom_target(_rosneuro_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rosneuro_msgs" "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDecoder.msg" ""
)

get_filename_component(_filename "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroOutput.msg" NAME_WE)
add_custom_target(_rosneuro_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rosneuro_msgs" "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroOutput.msg" "rosneuro_msgs/NeuroDataInt32:rosneuro_msgs/NeuroHeader:rosneuro_msgs/NeuroDataInfo:rosneuro_msgs/NeuroDataFloat:rosneuro_msgs/NeuroDecoder:std_msgs/Header"
)

get_filename_component(_filename "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/srv/GetAcquisitionInfo.srv" NAME_WE)
add_custom_target(_rosneuro_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rosneuro_msgs" "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/srv/GetAcquisitionInfo.srv" "rosneuro_msgs/NeuroHeader:rosneuro_msgs/NeuroDataInfo:rosneuro_msgs/NeuroDataFloat:rosneuro_msgs/NeuroDataInt32:rosneuro_msgs/NeuroFrame:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(rosneuro_msgs
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataFloat.msg"
  "${MSG_I_FLAGS}"
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosneuro_msgs
)
_generate_msg_cpp(rosneuro_msgs
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInt32.msg"
  "${MSG_I_FLAGS}"
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosneuro_msgs
)
_generate_msg_cpp(rosneuro_msgs
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosneuro_msgs
)
_generate_msg_cpp(rosneuro_msgs
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroHeader.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosneuro_msgs
)
_generate_msg_cpp(rosneuro_msgs
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroFrame.msg"
  "${MSG_I_FLAGS}"
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInt32.msg;/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroHeader.msg;/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInfo.msg;/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataFloat.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosneuro_msgs
)
_generate_msg_cpp(rosneuro_msgs
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroEvent.msg"
  "${MSG_I_FLAGS}"
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroHeader.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosneuro_msgs
)
_generate_msg_cpp(rosneuro_msgs
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDecoder.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosneuro_msgs
)
_generate_msg_cpp(rosneuro_msgs
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroOutput.msg"
  "${MSG_I_FLAGS}"
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInt32.msg;/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroHeader.msg;/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInfo.msg;/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataFloat.msg;/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDecoder.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosneuro_msgs
)

### Generating Services
_generate_srv_cpp(rosneuro_msgs
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/srv/GetAcquisitionInfo.srv"
  "${MSG_I_FLAGS}"
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroHeader.msg;/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInfo.msg;/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataFloat.msg;/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInt32.msg;/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroFrame.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosneuro_msgs
)

### Generating Module File
_generate_module_cpp(rosneuro_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosneuro_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(rosneuro_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(rosneuro_msgs_generate_messages rosneuro_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataFloat.msg" NAME_WE)
add_dependencies(rosneuro_msgs_generate_messages_cpp _rosneuro_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInt32.msg" NAME_WE)
add_dependencies(rosneuro_msgs_generate_messages_cpp _rosneuro_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInfo.msg" NAME_WE)
add_dependencies(rosneuro_msgs_generate_messages_cpp _rosneuro_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroHeader.msg" NAME_WE)
add_dependencies(rosneuro_msgs_generate_messages_cpp _rosneuro_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroFrame.msg" NAME_WE)
add_dependencies(rosneuro_msgs_generate_messages_cpp _rosneuro_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroEvent.msg" NAME_WE)
add_dependencies(rosneuro_msgs_generate_messages_cpp _rosneuro_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDecoder.msg" NAME_WE)
add_dependencies(rosneuro_msgs_generate_messages_cpp _rosneuro_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroOutput.msg" NAME_WE)
add_dependencies(rosneuro_msgs_generate_messages_cpp _rosneuro_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/srv/GetAcquisitionInfo.srv" NAME_WE)
add_dependencies(rosneuro_msgs_generate_messages_cpp _rosneuro_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rosneuro_msgs_gencpp)
add_dependencies(rosneuro_msgs_gencpp rosneuro_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rosneuro_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(rosneuro_msgs
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataFloat.msg"
  "${MSG_I_FLAGS}"
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosneuro_msgs
)
_generate_msg_eus(rosneuro_msgs
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInt32.msg"
  "${MSG_I_FLAGS}"
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosneuro_msgs
)
_generate_msg_eus(rosneuro_msgs
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosneuro_msgs
)
_generate_msg_eus(rosneuro_msgs
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroHeader.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosneuro_msgs
)
_generate_msg_eus(rosneuro_msgs
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroFrame.msg"
  "${MSG_I_FLAGS}"
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInt32.msg;/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroHeader.msg;/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInfo.msg;/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataFloat.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosneuro_msgs
)
_generate_msg_eus(rosneuro_msgs
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroEvent.msg"
  "${MSG_I_FLAGS}"
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroHeader.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosneuro_msgs
)
_generate_msg_eus(rosneuro_msgs
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDecoder.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosneuro_msgs
)
_generate_msg_eus(rosneuro_msgs
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroOutput.msg"
  "${MSG_I_FLAGS}"
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInt32.msg;/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroHeader.msg;/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInfo.msg;/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataFloat.msg;/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDecoder.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosneuro_msgs
)

### Generating Services
_generate_srv_eus(rosneuro_msgs
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/srv/GetAcquisitionInfo.srv"
  "${MSG_I_FLAGS}"
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroHeader.msg;/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInfo.msg;/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataFloat.msg;/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInt32.msg;/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroFrame.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosneuro_msgs
)

### Generating Module File
_generate_module_eus(rosneuro_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosneuro_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(rosneuro_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(rosneuro_msgs_generate_messages rosneuro_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataFloat.msg" NAME_WE)
add_dependencies(rosneuro_msgs_generate_messages_eus _rosneuro_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInt32.msg" NAME_WE)
add_dependencies(rosneuro_msgs_generate_messages_eus _rosneuro_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInfo.msg" NAME_WE)
add_dependencies(rosneuro_msgs_generate_messages_eus _rosneuro_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroHeader.msg" NAME_WE)
add_dependencies(rosneuro_msgs_generate_messages_eus _rosneuro_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroFrame.msg" NAME_WE)
add_dependencies(rosneuro_msgs_generate_messages_eus _rosneuro_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroEvent.msg" NAME_WE)
add_dependencies(rosneuro_msgs_generate_messages_eus _rosneuro_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDecoder.msg" NAME_WE)
add_dependencies(rosneuro_msgs_generate_messages_eus _rosneuro_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroOutput.msg" NAME_WE)
add_dependencies(rosneuro_msgs_generate_messages_eus _rosneuro_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/srv/GetAcquisitionInfo.srv" NAME_WE)
add_dependencies(rosneuro_msgs_generate_messages_eus _rosneuro_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rosneuro_msgs_geneus)
add_dependencies(rosneuro_msgs_geneus rosneuro_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rosneuro_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(rosneuro_msgs
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataFloat.msg"
  "${MSG_I_FLAGS}"
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosneuro_msgs
)
_generate_msg_lisp(rosneuro_msgs
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInt32.msg"
  "${MSG_I_FLAGS}"
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosneuro_msgs
)
_generate_msg_lisp(rosneuro_msgs
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosneuro_msgs
)
_generate_msg_lisp(rosneuro_msgs
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroHeader.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosneuro_msgs
)
_generate_msg_lisp(rosneuro_msgs
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroFrame.msg"
  "${MSG_I_FLAGS}"
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInt32.msg;/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroHeader.msg;/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInfo.msg;/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataFloat.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosneuro_msgs
)
_generate_msg_lisp(rosneuro_msgs
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroEvent.msg"
  "${MSG_I_FLAGS}"
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroHeader.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosneuro_msgs
)
_generate_msg_lisp(rosneuro_msgs
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDecoder.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosneuro_msgs
)
_generate_msg_lisp(rosneuro_msgs
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroOutput.msg"
  "${MSG_I_FLAGS}"
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInt32.msg;/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroHeader.msg;/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInfo.msg;/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataFloat.msg;/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDecoder.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosneuro_msgs
)

### Generating Services
_generate_srv_lisp(rosneuro_msgs
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/srv/GetAcquisitionInfo.srv"
  "${MSG_I_FLAGS}"
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroHeader.msg;/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInfo.msg;/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataFloat.msg;/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInt32.msg;/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroFrame.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosneuro_msgs
)

### Generating Module File
_generate_module_lisp(rosneuro_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosneuro_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(rosneuro_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(rosneuro_msgs_generate_messages rosneuro_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataFloat.msg" NAME_WE)
add_dependencies(rosneuro_msgs_generate_messages_lisp _rosneuro_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInt32.msg" NAME_WE)
add_dependencies(rosneuro_msgs_generate_messages_lisp _rosneuro_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInfo.msg" NAME_WE)
add_dependencies(rosneuro_msgs_generate_messages_lisp _rosneuro_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroHeader.msg" NAME_WE)
add_dependencies(rosneuro_msgs_generate_messages_lisp _rosneuro_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroFrame.msg" NAME_WE)
add_dependencies(rosneuro_msgs_generate_messages_lisp _rosneuro_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroEvent.msg" NAME_WE)
add_dependencies(rosneuro_msgs_generate_messages_lisp _rosneuro_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDecoder.msg" NAME_WE)
add_dependencies(rosneuro_msgs_generate_messages_lisp _rosneuro_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroOutput.msg" NAME_WE)
add_dependencies(rosneuro_msgs_generate_messages_lisp _rosneuro_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/srv/GetAcquisitionInfo.srv" NAME_WE)
add_dependencies(rosneuro_msgs_generate_messages_lisp _rosneuro_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rosneuro_msgs_genlisp)
add_dependencies(rosneuro_msgs_genlisp rosneuro_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rosneuro_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(rosneuro_msgs
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataFloat.msg"
  "${MSG_I_FLAGS}"
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosneuro_msgs
)
_generate_msg_nodejs(rosneuro_msgs
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInt32.msg"
  "${MSG_I_FLAGS}"
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosneuro_msgs
)
_generate_msg_nodejs(rosneuro_msgs
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosneuro_msgs
)
_generate_msg_nodejs(rosneuro_msgs
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroHeader.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosneuro_msgs
)
_generate_msg_nodejs(rosneuro_msgs
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroFrame.msg"
  "${MSG_I_FLAGS}"
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInt32.msg;/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroHeader.msg;/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInfo.msg;/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataFloat.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosneuro_msgs
)
_generate_msg_nodejs(rosneuro_msgs
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroEvent.msg"
  "${MSG_I_FLAGS}"
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroHeader.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosneuro_msgs
)
_generate_msg_nodejs(rosneuro_msgs
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDecoder.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosneuro_msgs
)
_generate_msg_nodejs(rosneuro_msgs
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroOutput.msg"
  "${MSG_I_FLAGS}"
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInt32.msg;/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroHeader.msg;/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInfo.msg;/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataFloat.msg;/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDecoder.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosneuro_msgs
)

### Generating Services
_generate_srv_nodejs(rosneuro_msgs
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/srv/GetAcquisitionInfo.srv"
  "${MSG_I_FLAGS}"
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroHeader.msg;/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInfo.msg;/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataFloat.msg;/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInt32.msg;/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroFrame.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosneuro_msgs
)

### Generating Module File
_generate_module_nodejs(rosneuro_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosneuro_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(rosneuro_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(rosneuro_msgs_generate_messages rosneuro_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataFloat.msg" NAME_WE)
add_dependencies(rosneuro_msgs_generate_messages_nodejs _rosneuro_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInt32.msg" NAME_WE)
add_dependencies(rosneuro_msgs_generate_messages_nodejs _rosneuro_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInfo.msg" NAME_WE)
add_dependencies(rosneuro_msgs_generate_messages_nodejs _rosneuro_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroHeader.msg" NAME_WE)
add_dependencies(rosneuro_msgs_generate_messages_nodejs _rosneuro_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroFrame.msg" NAME_WE)
add_dependencies(rosneuro_msgs_generate_messages_nodejs _rosneuro_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroEvent.msg" NAME_WE)
add_dependencies(rosneuro_msgs_generate_messages_nodejs _rosneuro_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDecoder.msg" NAME_WE)
add_dependencies(rosneuro_msgs_generate_messages_nodejs _rosneuro_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroOutput.msg" NAME_WE)
add_dependencies(rosneuro_msgs_generate_messages_nodejs _rosneuro_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/srv/GetAcquisitionInfo.srv" NAME_WE)
add_dependencies(rosneuro_msgs_generate_messages_nodejs _rosneuro_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rosneuro_msgs_gennodejs)
add_dependencies(rosneuro_msgs_gennodejs rosneuro_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rosneuro_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(rosneuro_msgs
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataFloat.msg"
  "${MSG_I_FLAGS}"
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosneuro_msgs
)
_generate_msg_py(rosneuro_msgs
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInt32.msg"
  "${MSG_I_FLAGS}"
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosneuro_msgs
)
_generate_msg_py(rosneuro_msgs
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosneuro_msgs
)
_generate_msg_py(rosneuro_msgs
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroHeader.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosneuro_msgs
)
_generate_msg_py(rosneuro_msgs
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroFrame.msg"
  "${MSG_I_FLAGS}"
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInt32.msg;/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroHeader.msg;/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInfo.msg;/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataFloat.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosneuro_msgs
)
_generate_msg_py(rosneuro_msgs
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroEvent.msg"
  "${MSG_I_FLAGS}"
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroHeader.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosneuro_msgs
)
_generate_msg_py(rosneuro_msgs
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDecoder.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosneuro_msgs
)
_generate_msg_py(rosneuro_msgs
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroOutput.msg"
  "${MSG_I_FLAGS}"
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInt32.msg;/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroHeader.msg;/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInfo.msg;/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataFloat.msg;/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDecoder.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosneuro_msgs
)

### Generating Services
_generate_srv_py(rosneuro_msgs
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/srv/GetAcquisitionInfo.srv"
  "${MSG_I_FLAGS}"
  "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroHeader.msg;/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInfo.msg;/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataFloat.msg;/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInt32.msg;/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroFrame.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosneuro_msgs
)

### Generating Module File
_generate_module_py(rosneuro_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosneuro_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(rosneuro_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(rosneuro_msgs_generate_messages rosneuro_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataFloat.msg" NAME_WE)
add_dependencies(rosneuro_msgs_generate_messages_py _rosneuro_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInt32.msg" NAME_WE)
add_dependencies(rosneuro_msgs_generate_messages_py _rosneuro_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDataInfo.msg" NAME_WE)
add_dependencies(rosneuro_msgs_generate_messages_py _rosneuro_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroHeader.msg" NAME_WE)
add_dependencies(rosneuro_msgs_generate_messages_py _rosneuro_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroFrame.msg" NAME_WE)
add_dependencies(rosneuro_msgs_generate_messages_py _rosneuro_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroEvent.msg" NAME_WE)
add_dependencies(rosneuro_msgs_generate_messages_py _rosneuro_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroDecoder.msg" NAME_WE)
add_dependencies(rosneuro_msgs_generate_messages_py _rosneuro_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/msg/NeuroOutput.msg" NAME_WE)
add_dependencies(rosneuro_msgs_generate_messages_py _rosneuro_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sebastiano/hmm_workspace/src/rosneuro_msgs/srv/GetAcquisitionInfo.srv" NAME_WE)
add_dependencies(rosneuro_msgs_generate_messages_py _rosneuro_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rosneuro_msgs_genpy)
add_dependencies(rosneuro_msgs_genpy rosneuro_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rosneuro_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosneuro_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosneuro_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(rosneuro_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosneuro_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosneuro_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(rosneuro_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosneuro_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosneuro_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(rosneuro_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosneuro_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosneuro_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(rosneuro_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosneuro_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosneuro_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosneuro_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(rosneuro_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
