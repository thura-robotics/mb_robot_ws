#!/usr/bin/env python3

import rospy
from nav_msgs.msg import Odometry
from sensor_msgs.msg import Imu
from geometry_msgs.msg import Twist  # This is for cmd/vel
import tf.transformations
from math import atan2, sin, cos

# imu_data_ = Imu()
odom_imu_ = Odometry()
# imu_raw = Twist()

# Initial reset
x = 0.0
y = 0.0
theta = 0.0
Vx = 0.0
Vy = 0.0
vel = Twist()

# def IMUDataCallback(msg):
#     global imu_data_
#     imu_data_ = msg

def vel_data(msg):
    global vel
    vel = msg

# def OdomIMU(dt):
#     global imu_data_, odom_imu_, x, y, theta, Vx, Vy

#     acc_x_ = imu_data_.linear_acceleration.x
#     acc_y_ = imu_data_.linear_acceleration.y
#     angular_z_ = imu_data_.angular_velocity.z


#     delta_theta = angular_z_ * dt
#     theta += delta_theta
#     theta = atan2(sin(theta), cos(theta))  # Normalize to [-π, π]

#     Vx += acc_x_ * dt
#     Vy += acc_y_ * dt

#     delta_x = (Vx * cos(theta) - Vy * sin(theta)) * dt
#     delta_y = (Vx * sin(theta) + Vy * cos(theta)) * dt

#     x += delta_x
#     y += delta_y
    
#     odom_imu_.pose.pose.position.x = x
#     odom_imu_.pose.pose.position.y = y
#     odom_imu_.pose.pose.position.z = 0.0
    
#     quaternion = tf.transformations.quaternion_from_euler(0, 0, theta)
#     odom_imu_.pose.pose.orientation.x = quaternion[0]
#     odom_imu_.pose.pose.orientation.y = quaternion[1]
#     odom_imu_.pose.pose.orientation.z = quaternion[2]
#     odom_imu_.pose.pose.orientation.w = quaternion[3]
    
#     odom_imu_.twist.twist.linear.x = Vx
#     odom_imu_.twist.twist.linear.y = Vy
#     odom_imu_.twist.twist.angular.z = angular_z_

def Odom_Cal(dt):

    # Orientation Update
    global delta_theta, theta, delta_x, delta_y,vel,x,y
    
    delta_theta = vel.angular.z * dt
    theta += delta_theta

    # Position Update

    delta_x = (vel.linear.x * cos(theta) - vel.linear.y * sin(theta)) * dt
    delta_y = (vel.linear.x * sin(theta) + vel.linear.y * cos(theta)) * dt

    x += delta_x
    y += delta_y
    
    odom_imu_.pose.pose.position.x = x
    odom_imu_.pose.pose.position.y = y
    odom_imu_.pose.pose.position.z = 0.0
    
    quaternion = tf.transformations.quaternion_from_euler(0, 0, theta) # row,pitch,yawreg
    odom_imu_.pose.pose.orientation.x = quaternion[0]
    odom_imu_.pose.pose.orientation.y = quaternion[1]
    odom_imu_.pose.pose.orientation.z = quaternion[2]
    odom_imu_.pose.pose.orientation.w = quaternion[3]
    
    odom_imu_.twist.twist.linear.x = vel.linear.x
    odom_imu_.twist.twist.linear.y = vel.linear.y
    odom_imu_.twist.twist.angular.z = vel.angular.z



def main():
    global odom_imu_
    rospy.init_node('odom_imu_fake')
    rate = rospy.Rate(10)
    
    rospy.Subscriber('/cmd_vel', Twist, vel_data)  
    odo_data = rospy.Publisher('/odom/cmd_vel',Odometry , queue_size=1)
    
    odom_imu_.header.frame_id = 'odom'
    odom_imu_.child_frame_id = 'base_footprint'
    
    last_time = rospy.Time.now()


    while not rospy.is_shutdown():
        current_time = rospy.Time.now()
        dt = (current_time - last_time).to_sec()
        Odom_Cal(dt)
        last_time = current_time
        

        odom_imu_.header.stamp = current_time
        odo_data.publish(odom_imu_)
        rate.sleep()


if __name__ == '__main__':
    try:
        main()
    except rospy.ROSInterruptException:
        pass
