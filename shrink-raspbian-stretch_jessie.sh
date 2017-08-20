#!/bin/bash

# delete package
delete_package(){
	# delete package
	sudo apt-get autoremove -y wolfram-engine
	sudo apt-get autoremove -y oracle-java8-jdk
	sudo apt-get autoremove -y sonic-pi
	sudo apt-get autoremove -y libreoffice*
	# 100MB-----------
	sudo apt-get autoremove -y scratch* nuscratch squeak-plugins-scratch
	sudo apt-get autoremove -y nuscratch
	sudo apt-get autoremove -y gnome-user-guide
	sudo apt-get autoremove -y freepats
	sudo apt-get autoremove -y libraspberrypi-doc
	sudo apt-get autoremove -y pypy
	sudo apt-get autoremove -y greenfoot
	# 10MB-----------
	sudo apt-get autoremove -y epiphany-browser*
	sudo apt-get autoremove -y bluej
	sudo apt-get autoremove -y netsurf*
	sudo apt-get autoremove -y realvnc-vnc-*
	sudo apt-get autoremove -y supercollider-server
	sudo apt-get autoremove -y debian-reference*
	sudo apt-get autoremove -y minecraft-pi
	sudo apt-get autoremove -y claws-mail
	sudo apt-get autoremove -y galculator
	sudo apt-get autoremove -y geany*
	sudo apt-get autoremove -y idle*
	sudo apt-get autoremove -y lxterminal
	sudo apt-get autoremove -y
	sudo apt-get -y clean
}

START_TIME=`date +%s`

# change directory here
cd `dirname $0`

delete_package

END_TIME=`date +%s`

SS=`expr ${END_TIME} - ${START_TIME}`
HH=`expr ${SS} / 3600`
SS=`expr ${SS} % 3600`
MM=`expr ${SS} / 60`
SS=`expr ${SS} % 60`

echo "Total Time: ${HH}:${MM}:${SS} (h:m:s)"
