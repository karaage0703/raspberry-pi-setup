#!/bin/bash

# install apt-get package
apt_get_install(){
	sudo apt-get update
	sudo apt-get install -y xserver-xorg-input-evdev
}

# setup dotfiles
setup_dotfiles(){
	sudo cp ./dotfiles/config_quimat_3_5_disp.txt /boot/config.txt
	sudo mkdir -p /etc/X11/xorg.conf.d
	sudo cp ./dotfiles/quimat_3_5_calibration.conf /etc/X11/xorg.conf.d/99-calibration.conf
	sudo cp -rf /usr/share/X11/xorg.conf.d/10-evdev.conf /usr/share/X11/xorg.conf.d/45-evdev.conf
}

START_TIME=`date +%s`

# change directory here
cd `dirname $0`

apt_get_install
setup_dotfiles

END_TIME=`date +%s`

SS=`expr ${END_TIME} - ${START_TIME}`
HH=`expr ${SS} / 3600`
SS=`expr ${SS} % 3600`
MM=`expr ${SS} / 60`
SS=`expr ${SS} % 60`

echo "Total Time: ${HH}:${MM}:${SS} (h:m:s)"

echo "Please reboot"
