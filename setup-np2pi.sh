#!/bin/bash
# Raspberry Pi 4
# Raspbian Buster with desktop 2020-02-13
# Reference:
# https://github.com/irori/np2pi/wiki/NP2-for-Raspberry-Pi
# http://bauxite.sakura.ne.jp/software/dos/freedos.htm

START_TIME=`date +%s`

# Install SDL
sudo apt-get update
cd && sudo apt-get install -y libasound2-dev
git clone https://github.com/vanfanel/SDL-1.2.15-raspberrypi.git
cd SDL-1.2.15-raspberrypi
if [ `uname -m` = armv6l ]; then ./MAC_ConfigureSDL12-rpi1.sh; else ./MAC_ConfigureSDL12-rpi2.sh; fi
make && sudo make install

# Install freetype
cd && wget https://download.savannah.gnu.org/releases/freetype/freetype-2.9.1.tar.gz
tar xzf freetype-2.9.1.tar.gz
pushd freetype-2.9.1
./configure
make
sudo make install
sudo cp builds/unix/freetype-config /usr/bin
popd

# Install SDL_ttf
cd && wget https://www.libsdl.org/projects/SDL_ttf/release/SDL_ttf-2.0.11.tar.gz
tar xzf SDL_ttf-2.0.11.tar.gz
cd SDL_ttf-2.0.11
./configure && make && sudo make install
sudo /sbin/ldconfig

# Build np2pi
cd && git clone https://github.com/irori/np2pi.git
cd np2pi/sdl
make -f makefile.rpi

# Install font
cd ~/np2pi/bin
sudo apt-get install ttf-sazanami-gothic
ln -s /usr/share/fonts/truetype/sazanami/sazanami-gothic.ttf default.ttf

# Download disk image
cd ~/np2pi/bin
wget https://github.com/lpproj/fdkernel/releases/download/test-20200227/fd98_hd_250m_20200227.zip
unzip fd98_hd_250m_20200227.zip

END_TIME=`date +%s`

SS=`expr ${END_TIME} - ${START_TIME}`
HH=`expr ${SS} / 3600`
SS=`expr ${SS} % 3600`
MM=`expr ${SS} / 60`
SS=`expr ${SS} % 60`

echo "Total Time: ${HH}:${MM}:${SS} (h:m:s)"
