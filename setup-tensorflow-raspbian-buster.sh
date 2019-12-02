#!/bin/bash
# Raspbian Buster with desktop 2019-09-26

# install tensorflow
install_tensorflow(){
	sudo pip3 install -U pip
	sudo pip3 install -U setuptools
	sudo pip3 install wrapt --upgrade --ignore-installed
	sudo pip3 install --default-timeout=1000 tensorflow==1.13.1
}


START_TIME=`date +%s`

install_tensorflow

END_TIME=`date +%s`

SS=`expr ${END_TIME} - ${START_TIME}`
HH=`expr ${SS} / 3600`
SS=`expr ${SS} % 3600`
MM=`expr ${SS} / 60`
SS=`expr ${SS} % 60`

echo "Total Time: ${HH}:${MM}:${SS} (h:m:s)"
