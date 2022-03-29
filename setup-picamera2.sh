#!/bin/bash
# Raspberry Pi OS(64-bit) with desktop 2022-01-28
# Reference:
# https://note.com/arcana_tech/n/nfb2ea4e7ba8a
# https://github.com/raspberrypi/picamera2


START_TIME=`date +%s`

sudo apt install -y libboost-dev
sudo apt install -y libgnutls28-dev openssl libtiff5-dev
sudo apt install -y libfmt-dev libdrm-dev
sudo apt install -y python3-pyqt5
sudo apt install -y meson
sudo pip3 install opencv
sudo pip3 install pyyaml ply
sudo pip3 install pyopengl
sudo pip3 install piexif
cd
git clone --branch picamera2 https://github.com/raspberrypi/libcamera.git
cd libcamera
meson build -Dpycamera=enabled
ninja -C build -j 2
sudo ninja -C build install
cd
git clone https://github.com/tomba/kmsxx.git
cd kmsxx
git submodule update --init
meson build
ninja -C build -j 2
cd
git clone https://github.com/RaspberryPiFoundation/python-v4l2.git
cd
git clone https://github.com/raspberrypi/picamera2.git
sh -c "echo \"export PYTHONPATH=/home/pi/picamera2:/home/pi/libcamera/build/src/py:/home/pi/kmsxx/build/py:/home/pi/python-v4l2\" >> ~/.bashrc"

END_TIME=`date +%s`

SS=`expr ${END_TIME} - ${START_TIME}`
HH=`expr ${SS} / 3600`
SS=`expr ${SS} % 3600`
MM=`expr ${SS} / 60`
SS=`expr ${SS} % 60`

echo "Total Time: ${HH}:${MM}:${SS} (h:m:s)"
