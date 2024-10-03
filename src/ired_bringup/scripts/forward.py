#!/usr/bin/env python3
import rospy
from geometry_msgs.msg import Twist
from ired_msgs.msg import MotorSpeed
from math import sin,cos,radians
import numpy as np

motor_fb_ = MotorSpeed()

cmd_vel_ = Twist()

R = 0.0635
v_x = 0
v_y = 0
omega = 0

A_inv = np.array([[0.5,-0.5,0.5,-0.5],
              [-0.5,-0.5,0.5,0.5],
              [-1/(4*R),-1/(4*R),-1/(4*R),-1/(4*R)]])

# print (A.shape)


def speedMotorCallback(msg):
    global motor_fb_
    motor_fb_ = msg

def main():
    global motor_fb_,cmd_vel_
    rospy.init_node('ired_forward_kinematics')
    rate = rospy.Rate(5)
    rospy.loginfo('wait for /cmd_vel')
    rospy.wait_for_message('/cmd_vel', Twist)
    rospy.loginfo('ROS nodes are connected successfully.')
    rospy.Subscriber('/ired/motor/speed_fb', MotorSpeed, speedMotorCallback)
    robot_speed_pub_ = rospy.Publisher('/ired/speed',Twist, queue_size=10)
    
    while not rospy.is_shutdown():
        # add code here

        omegas = np.array([[motor_fb_.speed_fb[0]],
                          [motor_fb_.speed_fb[1]],
                          [motor_fb_.speed_fb[2]],
                          [motor_fb_.speed_fb[3]]])
        
        v = np.matmul(A_inv,omegas)
        
        cmd_vel_.linear.x = v[0,0]
        cmd_vel_.linear.y = v[1,0]
        cmd_vel_.angular.z = v[2,0]
        robot_speed_pub_.publish(cmd_vel_)
        rate.sleep()

if __name__ == '__main__':
    try:
        main()
    except rospy.ROSInterruptException:
        pass
