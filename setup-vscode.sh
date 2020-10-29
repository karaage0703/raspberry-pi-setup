#!/bin/bash

# update package and firmware
install_vscode(){
	# update package
	sudo apt update
	cd && wget -O insider.deb https://update.code.visualstudio.com/latest/linux-deb-armhf/insider
	sudo apt install ./insider.deb
	sudo mv /usr/bin/code-insiders /usr/bin/code
	rm insider.deb
}

START_TIME=`date +%s`

# change directory here
cd `dirname $0`

install_vscode

END_TIME=`date +%s`

SS=`expr ${END_TIME} - ${START_TIME}`
HH=`expr ${SS} / 3600`
SS=`expr ${SS} % 3600`
MM=`expr ${SS} / 60`
SS=`expr ${SS} % 60`

echo "Total Time(Install VS Code): ${HH}:${MM}:${SS} (h:m:s)"

echo "Please reboot"
