#!/bin/bash
# Raspbian Buster with desktop 2019-09-26
# Reference:
# https://qiita.com/masaru/items/658b24b0806144cfeb1c

# install apt-get package
apt_get_install(){
	sudo apt-get update
	sudo apt-get install -y libhdf5-dev libhdf5-serial-dev libhdf5-100
	sudo apt-get install -y libqtgui4 libqtwebkit4 libqt4-test python3-pyqt5
	sudo apt-get install -y libatlas-base-dev
	sudo apt-get install -y libjasper-dev
}

# install Open CV
install_opencv(){
	sudo pip3 --default-timeout=1000 install opencv-python
}



START_TIME=`date +%s`

# change directory here
cd `dirname $0`

apt_get_install
install_opencv


END_TIME=`date +%s`

SS=`expr ${END_TIME} - ${START_TIME}`
HH=`expr ${SS} / 3600`
SS=`expr ${SS} % 3600`
MM=`expr ${SS} / 60`
SS=`expr ${SS} % 60`

echo "Total Time: ${HH}:${MM}:${SS} (h:m:s)"
