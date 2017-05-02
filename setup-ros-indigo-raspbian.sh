#!/bin/bash

# author: utahkaA
# reference site:
# http://qiita.com/utahkaA/items/126f93c3d73c4f5269e2

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list'
wget https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -O - | sudo apt-key add -
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install -y python-pip python-setuptools python-yaml python-distribute python-docutils python-dateutil python-six
sudo pip install rosdep rosinstall_generator wstool rosinstall
sudo rosdep init
rosdep update
mkdir ~/ros_catkin_ws
cd ~/ros_catkin_ws
rosinstall_generator ros_comm —rosdistro indigo —deps —wet-only —exclude roslisp —tar > indigo-ros_comm-wet.rosinstall
wstool init src indigo-ros_comm-wet.rosinstall
rosdep install —from-paths src —ignore-src —rosdistro indigo -y -r —os=debian:jessie
sudo ./src/catkin/bin/catkin_make_isolated —install -DCMAKE_BUILD_TYPE=Release —install-space /opt/ros/indigo -j2
source /opt/ros/indigo/setup.bash
echo "source /opt/ros/indigo/setup.bash" >> ~/.bashrc
echo "ROS setup is done"
exec bash
