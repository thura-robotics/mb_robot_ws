#!/usr/bin/env python3
import rospy
from geometry_msgs.msg import Twist
from ired_msgs.msg import MotorControl
import numpy as np
from math import sin,cos,radians

cmd_vel_ = Twist()
omegas = MotorControl()

# Some constants
R = 0.205
v_x = 0
v_y = 0
omega = 0

# Transformation matrix
A = np.array([[sin(radians(45)),-cos(radians(45)),-R],
     [sin(radians(315)),-cos(radians(315)),-R],
     [sin(radians(135)),-cos(radians(135)),-R],
     [sin(radians(225)),-cos(radians(225)),-R]])

def commandVelocityCallback(msg):
    global cmd_vel_
    cmd_vel_ = msg   # Assign some values in the callback

   
def main():
    global cmd_vel_, omegas
    rospy.init_node('ired_inverse_kinematics')
    rate = rospy.Rate(5)
    rospy.loginfo('wait for /cmd_vel')
    rospy.wait_for_message('/cmd_vel', Twist)
    rospy.loginfo('ROS nodes are successfully connected')
    rospy.Subscriber('/cmd_vel', Twist, commandVelocityCallback)
    motor_data_pub_ = rospy.Publisher('/ired/motor/speed_control', MotorControl, queue_size=1)
    
    while not rospy.is_shutdown():
        # add code here

       
        v = np.array([[cmd_vel_.linear.x],
                     [cmd_vel_.linear.y],
                     [cmd_vel_.angular.z]])
        
        w = np.matmul(A,v)  # This is an error, why?
        # print(w.shape)
        omegas.speed[0] = w[0,0] * 150
        omegas.speed[1] = w[1,0] * 150
        omegas.speed[2] = w[2,0] * 150
        omegas.speed[3] = w[3,0] * 150
        omegas.pid_motor_front_left = [5,5,0]
        


        motor_data_pub_.publish(omegas)

        rate.sleep()

if __name__ == '__main__':
    try:
        main()
    except rospy.ROSInterruptException:
        pass
