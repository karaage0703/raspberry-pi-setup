#!/bin/bash

# update package and firmware
update_package(){
	# update package
	sudo apt update
	sudo apt -y upgrade

	# update firmware
	sudo rpi-update
}

# install apt-get package
apt_get_install(){
	# setup JAPANESE environment
	sudo apt install -y fonts-vlgothic
	sudo apt install -y ibus-mozc

	# install editor
	sudo apt install -y vim
	sudo apt install -y vim-gtk

	# install gnome-terminal
	sudo apt install -y gnome-terminal

	# install partition setup tool
	sudo apt install -y gparted

	# install virtual terminal
	sudo apt install -y byobu

	# install screen capture tool
	sudo apt install -y scrot

	sudo apt install -y curl
}

# setup dotfiles
setup_dotfiles(){
	curl -l https://raw.githubusercontent.com/karaage0703/ubuntu-setup/master/bashrc.patch >> ~/.bashrc
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
