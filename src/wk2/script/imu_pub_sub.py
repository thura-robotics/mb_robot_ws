#!/usr/bin/env python3

import rospy
from turtlesim.msg import Pose
from geometry_msgs.msg import Twist
from sensor_msgs.msg import Imu
from tf import transformations as tsfm


imu_msg = Imu()
imu_raw = Twist()
prev_time = 0


ax = 0
ay = 0
az = 0

def imu_data(msg):
    global imu_msg, imu_raw
    global prev_time
    global ax, ay, az

    imu_raw = msg
    

    # rospy.loginfo(f"Whatever data that comes in {msg}")


def show_orien():
    global imu_msg, imu_raw
    global prev_time
    global ax, ay, az
    
    time_now = rospy.Time.now().to_sec()
    diff_time = time_now - prev_time
    prev_time = time_now
    imu_msg.header.stamp = rospy.Time.now()
    imu_msg.header.frame_id = "imu"
    imu_msg.linear_acceleration.x = imu_raw.linear.x
    imu_msg.linear_acceleration.y = imu_raw.linear.y
    imu_msg.linear_acceleration.z = imu_raw.linear.z
    
    # Quarternion Calculation
    imu_msg.angular_velocity.x = imu_raw.angular.x
    imu_msg.angular_velocity.y = imu_raw.angular.y
    imu_msg.angular_velocity.z = imu_raw.angular.z

    ax = ax + imu_msg.angular_velocity.x * diff_time
    ay = ay + imu_msg.angular_velocity.y * diff_time
    az = az + imu_msg.angular_velocity.z * diff_time

    imu_msg.orientation.x,imu_msg.orientation.y,imu_msg.orientation.z,imu_msg.orientation.w = 0,0,0,1


def main():
    rospy.init_node('imu_pub_sub', anonymous=True)
    global imu_sub, imu_pub
    imu_sub = rospy.Subscriber('/ired/imu/raw', Twist, imu_data)
    imu_pub = rospy.Publisher('/ired/imu/data', Imu, queue_size=1)
    
    while not rospy.is_shutdown():
        show_orien()
        imu_pub.publish(imu_msg)
        

    # rospy.spin()  # another way of "while not rospy.is_shutdown()"

if __name__ == '__main__':
    try:
        main()
    except rospy.ROSInterruptException:
        pass
