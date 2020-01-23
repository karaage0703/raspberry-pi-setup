#!/bin/bash

# install apt-get package
apt_get_install(){
	sudo apt-get update
	sudo apt-get install -y tightvncserver
}

# setup dotfiles
setup_dotfiles(){
	sudo cp ./dotfiles/vncboot /etc/init.d/vncboot
	sudo update-rc.d -f lightdm remove
	sudo update-rc.d vncboot defaults
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

echo "Input password for vnc"
sudo /etc/init.d/vncboot start

echo "Please reboot"
