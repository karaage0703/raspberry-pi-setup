#!/bin/bash

# reference site:
# http://cyberworks.cocolog-nifty.com/blog/2016/02/raspberry-pi--4.html2

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116
sudo apt-get update

echo "[Installing ROS and ROS Packages]"
sudo apt-get install -y ros-indigo-ros-base
sudo apt-get install -y python-rosdep python-catkin-tools

echo "[rosdep init and python-rosinstall]"
sudo rosdep init
rosdep update
sudo apt-get install -y python-rosinstall

echo "[Making the catkin workspace and testing the catkin_make]"
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws
catkin init
catkin build

echo "[Setting the ROS evironment]"
sh -c "echo \"source ~/catkin_ws/devel/setup.bash\" >> ~/.bashrc"
echo "[ROS setup is done!]"

exec bash

exit 0
