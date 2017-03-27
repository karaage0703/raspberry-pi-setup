#!/bin/bash

# reference site:
# https://github.com/UbiquityRobotics/raspicam_node/tree/indigo_safe

echo "Install the Raspberry Pi user land"
cd ~
git clone https://github.com/raspberrypi/userland.git
cd ~/userland
./buildme

echo "Install the compressed-image-transport library"
sudo apt-get install -y ros-indigo-compressed-image-transport
sudo apt-get install -y ros-indigo-camera-info-manager

echo "Install raspicam_node repositories"
cd ~/catkin_ws/src
git clone https://github.com/UbiquityRobotics/raspicam_node.git
cd raspicam_node
git fetch
git checkout -b indigo_safe origin/indigo_safe

echo "Build"
cd ~/catkin_ws
catkin_make

echo "raspicam_node build is done"
