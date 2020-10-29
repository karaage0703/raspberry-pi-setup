#!/bin/bash
# Raspberry Pi OS with desktop 2020-08-20
# install tensorflow
install_tensorflow(){
	sudo pip3 install -U pip
	sudo pip3 install -U setuptools
	sudo pip3 install wrapt --upgrade --ignore-installed
	sudo pip3 install --default-timeout=1000 tensorflow==1.14.0
	sudo apt-get install -y python3-h5py
}


START_TIME=`date +%s`

install_tensorflow

END_TIME=`date +%s`

SS=`expr ${END_TIME} - ${START_TIME}`
HH=`expr ${SS} / 3600`
SS=`expr ${SS} % 3600`
MM=`expr ${SS} / 60`
SS=`expr ${SS} % 60`

echo "Total Time(Setup TensorFlow): ${HH}:${MM}:${SS} (h:m:s)"
