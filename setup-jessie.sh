# change directory here
cd `dirname $0`

# update package
sudo apt-get update
sudo apt-get upgrade

# update firmware
sudo rpi-update

# setup JAPANESE environment
sudo apt-get install -y fonts-vlgothic
sudo apt-get install -y ibus-mozc

sudo apt-get install -y tightvncserver

# install editor
sudo apt-get install -y vim
sudo apt-get install -y vim-gtk

# install gnome-terminal
sudo apt-get install -y gnome-terminal

# install partition setup tool
sudo apt-get install -y gparted

# install virtual terminal
sudo apt-get install -y byobu

# setup dotfiles
sudo cp ./dotfiles/.bashrc ~/.bashrc
sudo cp ./dotfiles/config.txt /boot/config.txt
sudo cp ./dotfiles/lxpolkit.desktop /etc/xdg/autostart/lxpolkit.desktop

sudo cp ./dotfiles/vncboot /etc/init.d/vncboot
update-rc.d -f lightdm remove
update-rc.d vncboot defaults
