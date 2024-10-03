# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ired_msgs: 4 messages, 1 services")

set(MSG_I_FLAGS "-Iired_msgs:/home/thura/mb_robot_ws/src/ired_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ired_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/thura/mb_robot_ws/src/ired_msgs/msg/IMUData.msg" NAME_WE)
add_custom_target(_ired_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ired_msgs" "/home/thura/mb_robot_ws/src/ired_msgs/msg/IMUData.msg" ""
)

get_filename_component(_filename "/home/thura/mb_robot_ws/src/ired_msgs/msg/MotorControl.msg" NAME_WE)
add_custom_target(_ired_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ired_msgs" "/home/thura/mb_robot_ws/src/ired_msgs/msg/MotorControl.msg" ""
)

get_filename_component(_filename "/home/thura/mb_robot_ws/src/ired_msgs/msg/MotorData.msg" NAME_WE)
add_custom_target(_ired_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ired_msgs" "/home/thura/mb_robot_ws/src/ired_msgs/msg/MotorData.msg" ""
)

get_filename_component(_filename "/home/thura/mb_robot_ws/src/ired_msgs/msg/MotorSpeed.msg" NAME_WE)
add_custom_target(_ired_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ired_msgs" "/home/thura/mb_robot_ws/src/ired_msgs/msg/MotorSpeed.msg" ""
)

get_filename_component(_filename "/home/thura/mb_robot_ws/src/ired_msgs/srv/PIDTuning.srv" NAME_WE)
add_custom_target(_ired_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ired_msgs" "/home/thura/mb_robot_ws/src/ired_msgs/srv/PIDTuning.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(ired_msgs
  "/home/thura/mb_robot_ws/src/ired_msgs/msg/IMUData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ired_msgs
)
_generate_msg_cpp(ired_msgs
  "/home/thura/mb_robot_ws/src/ired_msgs/msg/MotorControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ired_msgs
)
_generate_msg_cpp(ired_msgs
  "/home/thura/mb_robot_ws/src/ired_msgs/msg/MotorData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ired_msgs
)
_generate_msg_cpp(ired_msgs
  "/home/thura/mb_robot_ws/src/ired_msgs/msg/MotorSpeed.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ired_msgs
)

### Generating Services
_generate_srv_cpp(ired_msgs
  "/home/thura/mb_robot_ws/src/ired_msgs/srv/PIDTuning.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ired_msgs
)

### Generating Module File
_generate_module_cpp(ired_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ired_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ired_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ired_msgs_generate_messages ired_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/thura/mb_robot_ws/src/ired_msgs/msg/IMUData.msg" NAME_WE)
add_dependencies(ired_msgs_generate_messages_cpp _ired_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thura/mb_robot_ws/src/ired_msgs/msg/MotorControl.msg" NAME_WE)
add_dependencies(ired_msgs_generate_messages_cpp _ired_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thura/mb_robot_ws/src/ired_msgs/msg/MotorData.msg" NAME_WE)
add_dependencies(ired_msgs_generate_messages_cpp _ired_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thura/mb_robot_ws/src/ired_msgs/msg/MotorSpeed.msg" NAME_WE)
add_dependencies(ired_msgs_generate_messages_cpp _ired_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thura/mb_robot_ws/src/ired_msgs/srv/PIDTuning.srv" NAME_WE)
add_dependencies(ired_msgs_generate_messages_cpp _ired_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ired_msgs_gencpp)
add_dependencies(ired_msgs_gencpp ired_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ired_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(ired_msgs
  "/home/thura/mb_robot_ws/src/ired_msgs/msg/IMUData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ired_msgs
)
_generate_msg_eus(ired_msgs
  "/home/thura/mb_robot_ws/src/ired_msgs/msg/MotorControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ired_msgs
)
_generate_msg_eus(ired_msgs
  "/home/thura/mb_robot_ws/src/ired_msgs/msg/MotorData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ired_msgs
)
_generate_msg_eus(ired_msgs
  "/home/thura/mb_robot_ws/src/ired_msgs/msg/MotorSpeed.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ired_msgs
)

### Generating Services
_generate_srv_eus(ired_msgs
  "/home/thura/mb_robot_ws/src/ired_msgs/srv/PIDTuning.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ired_msgs
)

### Generating Module File
_generate_module_eus(ired_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ired_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(ired_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(ired_msgs_generate_messages ired_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/thura/mb_robot_ws/src/ired_msgs/msg/IMUData.msg" NAME_WE)
add_dependencies(ired_msgs_generate_messages_eus _ired_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thura/mb_robot_ws/src/ired_msgs/msg/MotorControl.msg" NAME_WE)
add_dependencies(ired_msgs_generate_messages_eus _ired_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thura/mb_robot_ws/src/ired_msgs/msg/MotorData.msg" NAME_WE)
add_dependencies(ired_msgs_generate_messages_eus _ired_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thura/mb_robot_ws/src/ired_msgs/msg/MotorSpeed.msg" NAME_WE)
add_dependencies(ired_msgs_generate_messages_eus _ired_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thura/mb_robot_ws/src/ired_msgs/srv/PIDTuning.srv" NAME_WE)
add_dependencies(ired_msgs_generate_messages_eus _ired_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ired_msgs_geneus)
add_dependencies(ired_msgs_geneus ired_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ired_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(ired_msgs
  "/home/thura/mb_robot_ws/src/ired_msgs/msg/IMUData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ired_msgs
)
_generate_msg_lisp(ired_msgs
  "/home/thura/mb_robot_ws/src/ired_msgs/msg/MotorControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ired_msgs
)
_generate_msg_lisp(ired_msgs
  "/home/thura/mb_robot_ws/src/ired_msgs/msg/MotorData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ired_msgs
)
_generate_msg_lisp(ired_msgs
  "/home/thura/mb_robot_ws/src/ired_msgs/msg/MotorSpeed.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ired_msgs
)

### Generating Services
_generate_srv_lisp(ired_msgs
  "/home/thura/mb_robot_ws/src/ired_msgs/srv/PIDTuning.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ired_msgs
)

### Generating Module File
_generate_module_lisp(ired_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ired_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ired_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ired_msgs_generate_messages ired_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/thura/mb_robot_ws/src/ired_msgs/msg/IMUData.msg" NAME_WE)
add_dependencies(ired_msgs_generate_messages_lisp _ired_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thura/mb_robot_ws/src/ired_msgs/msg/MotorControl.msg" NAME_WE)
add_dependencies(ired_msgs_generate_messages_lisp _ired_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thura/mb_robot_ws/src/ired_msgs/msg/MotorData.msg" NAME_WE)
add_dependencies(ired_msgs_generate_messages_lisp _ired_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thura/mb_robot_ws/src/ired_msgs/msg/MotorSpeed.msg" NAME_WE)
add_dependencies(ired_msgs_generate_messages_lisp _ired_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thura/mb_robot_ws/src/ired_msgs/srv/PIDTuning.srv" NAME_WE)
add_dependencies(ired_msgs_generate_messages_lisp _ired_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ired_msgs_genlisp)
add_dependencies(ired_msgs_genlisp ired_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ired_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(ired_msgs
  "/home/thura/mb_robot_ws/src/ired_msgs/msg/IMUData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ired_msgs
)
_generate_msg_nodejs(ired_msgs
  "/home/thura/mb_robot_ws/src/ired_msgs/msg/MotorControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ired_msgs
)
_generate_msg_nodejs(ired_msgs
  "/home/thura/mb_robot_ws/src/ired_msgs/msg/MotorData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ired_msgs
)
_generate_msg_nodejs(ired_msgs
  "/home/thura/mb_robot_ws/src/ired_msgs/msg/MotorSpeed.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ired_msgs
)

### Generating Services
_generate_srv_nodejs(ired_msgs
  "/home/thura/mb_robot_ws/src/ired_msgs/srv/PIDTuning.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ired_msgs
)

### Generating Module File
_generate_module_nodejs(ired_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ired_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(ired_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(ired_msgs_generate_messages ired_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/thura/mb_robot_ws/src/ired_msgs/msg/IMUData.msg" NAME_WE)
add_dependencies(ired_msgs_generate_messages_nodejs _ired_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thura/mb_robot_ws/src/ired_msgs/msg/MotorControl.msg" NAME_WE)
add_dependencies(ired_msgs_generate_messages_nodejs _ired_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thura/mb_robot_ws/src/ired_msgs/msg/MotorData.msg" NAME_WE)
add_dependencies(ired_msgs_generate_messages_nodejs _ired_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thura/mb_robot_ws/src/ired_msgs/msg/MotorSpeed.msg" NAME_WE)
add_dependencies(ired_msgs_generate_messages_nodejs _ired_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thura/mb_robot_ws/src/ired_msgs/srv/PIDTuning.srv" NAME_WE)
add_dependencies(ired_msgs_generate_messages_nodejs _ired_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ired_msgs_gennodejs)
add_dependencies(ired_msgs_gennodejs ired_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ired_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(ired_msgs
  "/home/thura/mb_robot_ws/src/ired_msgs/msg/IMUData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ired_msgs
)
_generate_msg_py(ired_msgs
  "/home/thura/mb_robot_ws/src/ired_msgs/msg/MotorControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ired_msgs
)
_generate_msg_py(ired_msgs
  "/home/thura/mb_robot_ws/src/ired_msgs/msg/MotorData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ired_msgs
)
_generate_msg_py(ired_msgs
  "/home/thura/mb_robot_ws/src/ired_msgs/msg/MotorSpeed.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ired_msgs
)

### Generating Services
_generate_srv_py(ired_msgs
  "/home/thura/mb_robot_ws/src/ired_msgs/srv/PIDTuning.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ired_msgs
)

### Generating Module File
_generate_module_py(ired_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ired_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ired_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ired_msgs_generate_messages ired_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/thura/mb_robot_ws/src/ired_msgs/msg/IMUData.msg" NAME_WE)
add_dependencies(ired_msgs_generate_messages_py _ired_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thura/mb_robot_ws/src/ired_msgs/msg/MotorControl.msg" NAME_WE)
add_dependencies(ired_msgs_generate_messages_py _ired_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thura/mb_robot_ws/src/ired_msgs/msg/MotorData.msg" NAME_WE)
add_dependencies(ired_msgs_generate_messages_py _ired_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thura/mb_robot_ws/src/ired_msgs/msg/MotorSpeed.msg" NAME_WE)
add_dependencies(ired_msgs_generate_messages_py _ired_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thura/mb_robot_ws/src/ired_msgs/srv/PIDTuning.srv" NAME_WE)
add_dependencies(ired_msgs_generate_messages_py _ired_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ired_msgs_genpy)
add_dependencies(ired_msgs_genpy ired_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ired_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ired_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ired_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(ired_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ired_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ired_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(ired_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ired_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ired_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(ired_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ired_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ired_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(ired_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ired_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ired_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ired_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(ired_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
