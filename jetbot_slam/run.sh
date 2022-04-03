sudo apt-get install ros-noetic-map-server
rosbag record -O my_data.bag /tf /jetbot/diff_drive_controller/odom /jetbot/laser_scan
>>>
[ INFO] [1648880970.015796365]: Subscribing to /jetbot/diff_drive_controller/odom
[ INFO] [1648880970.018445960]: Subscribing to /jetbot/laser_scan
[ INFO] [1648880970.019984706]: Subscribing to /tf
[ INFO] [1648880970.265638461, 40.941000000]: Recording to 'my_data.bag'.


roscore
rosparam set use_sim_time true

#
rosrun gmapping slam_gmapping scan:=/jetbot/laser_scan _particles:=50
rosbag play --clock -r 1.0 my_data.bag

