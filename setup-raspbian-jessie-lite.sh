#!/bin/bash

# update package and firmware
update_package(){
	# update package
	sudo apt-get update
	sudo apt-get -y upgrade

	# update firmware
	sudo rpi-update
}

# install apt-get package
apt_get_install(){
	# install editor
	sudo apt-get install -y vim
	sudo apt-get install -y vim-gtk

	# install virtual terminal
	sudo apt-get install -y byobu

	# install camera package
	sudo apt-get install -y python-picamera
	sudo apt-get install -y fbi

	# install python3
	sudo apt-get install -y python3
	sudo apt-get install -y python3-picamera
}

# setup dotfiles
setup_dotfiles(){
	sudo cp ./dotfiles/keyboard /etc/default/keyboard
	sudo cp ./dotfiles/config_lite.txt /boot/config.txt
}

START_TIME=`date +%s`

# change directory here
cd `dirname $0`

update_package
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
