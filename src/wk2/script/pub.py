#!/usr/bin/env python3

import rospy
from turtlesim.msg import Pose
from geometry_msgs.msg import Twist
import math

PI = 3.141592  # For degrees and radian calculation

pose = None
goal = Pose()
state = 'FORWARD'   # First, it will move forward
first_goal_set = False
turn_count = 0  # Added to count the turns

def turtlePose(msg):
    global pose
    pose = msg
    rospy.loginfo(f'x: {pose.x} y: {pose.y}')

def has_reached_goal():
    return abs(pose.x - goal.x) < 0.1 and abs(pose.y - goal.y) < 0.1 and abs(pose.theta - goal.theta) < 0.01 # Return true and false depending on accuracy

def has_stopped():
    return pose.angular_velocity < 0.0001 and pose.linear_velocity < 0.0001 # Return true and false depending on true stop



def command_turtle(linear, angular):
    twist = Twist()
    twist.linear.x = 2 * linear  #"I have increased speed a little bit"
    twist.angular.z = 2 * angular
    twist_pub.publish(twist)

def stop_forward():
    global state
    if has_stopped():
        #("Reached goal")
        state = 'TURN'
        goal.x = pose.x
        goal.y = pose.y
        goal.theta = (pose.theta - PI / 2.0) % (2 * PI)  # Changed to turn right
        if goal.theta >= PI:
            goal.theta -= 2 * PI
        
    else:
        command_turtle(0, 0)

def stop_turn():
    global turn_count, state
    if has_stopped():
        turn_count += 1
        if turn_count >= 4:  # Added to stop after completing the square
            #("Square completed, now turning 45 degrees to move diagonally")
            state = 'TURN_45'
            goal.theta = (pose.theta - PI / 4.0) % (2 * PI)  # Turn 45 degrees right
            if goal.theta >= PI:
                goal.theta -= 2 * PI
            
            return
        #("Reached goal")
        state = 'FORWARD'
        goal.x = math.cos(pose.theta) * 4 + pose.x  # Doubled the size
        goal.y = math.sin(pose.theta) * 4 + pose.y  # Doubled the size
        goal.theta = pose.theta
        
    else:
        command_turtle(0, 0)

def stop_turn_45():
    global state
    if has_stopped():
        #("Reached goal, now moving diagonally")
        state = 'DIAGONAL'
        goal.x = pose.x + math.cos(pose.theta) * math.sqrt(32)  # Move along the diagonal of the square
        goal.y = pose.y + math.sin(pose.theta) * math.sqrt(32)
        goal.theta = pose.theta
        
    else:
        command_turtle(0, 0)

def forward():
    global state
    if has_reached_goal():
        state = 'STOP_FORWARD'
        command_turtle(0, 0)
    else:
        command_turtle(1.0, 0.0)

def turn():
    global state
    if has_reached_goal():
        state = 'STOP_TURN'
        command_turtle(0, 0)
    else:
        command_turtle(0.0, -0.4)  # Changed to turn right

def turn_45():
    global state
    if has_reached_goal():
        state = 'STOP_TURN_45'
        command_turtle(0, 0)
    else:
        command_turtle(0.0, -0.4)  # Turn 45 degrees right

def diagonal():
    if has_reached_goal():
        #("Reached the end of the diagonal")
        rospy.signal_shutdown('Operation completed')
    else:
        command_turtle(1.0, 0.0)

def timer_callback(event):
    global pose, state, first_goal_set
    if not pose:
        return

    if not first_goal_set:
        first_goal_set = True
        state = 'FORWARD'
        goal.x = math.cos(pose.theta) * 4 + pose.x  # Doubled the size
        goal.y = math.sin(pose.theta) * 4 + pose.y  # Doubled the size
        goal.theta = pose.theta
        

    if state == 'FORWARD':
        forward()
    elif state == 'STOP_FORWARD':
        stop_forward()
    elif state == 'TURN':
        turn()
    elif state == 'STOP_TURN':
        stop_turn()
    elif state == 'TURN_45':
        turn_45()
    elif state == 'STOP_TURN_45':
        stop_turn_45()
    elif state == 'DIAGONAL':
        diagonal()

def main():
    rospy.init_node('mobile_pubsub', anonymous=True)
    global pose_sub, twist_pub, timer
    pose_sub = rospy.Subscriber('turtle1/pose', Pose, turtlePose)
    twist_pub = rospy.Publisher('turtle1/cmd_vel', Twist, queue_size=1)
    timer = rospy.Timer(rospy.Duration(0.008), timer_callback)  # Increased speed by halving the timer duration
    rospy.spin()  # another way of "while not rospy.is_shutdown()"

if __name__ == '__main__':
    try:
        main()
    except rospy.ROSInterruptException:
        pass