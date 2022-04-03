roslaunch sim1_lecture dtw_gazebo3.launch
rostopic pub -r 10 /dtw_robot/diff_drive_controller/cmd_vel geometry_msgs/Twist -- '[2.0, 0.0, 0.0]' '[0.0, 0.0, 1.8]'
