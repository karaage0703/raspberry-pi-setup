# raspberry-pi-setup
raspberry pi auto setup script

## Install Package
### Raspbian Buster
- JAPANESE environment(fonts-vlgothic, ibus-mozc)
- Editor(vim,vim-gtk)
- Terminal(gnome-terminal)
- Partition tool(gparted)
- Virtual Terminal(byobu)

## Setting
### Raspbian Buster
- Custom `.bashrc`

# Preparation
- Make SD disk of Raspbian Jessie
- Insert SD disk to Raspberry Pi
- Network Enable (Ether or WiFi)
- Raspberry Pi power on
- Install Git(Only for old raspbian)

## Git installation(Only for old raspbian)
```sh
$ sudo apt-get update
$ sudo apt-get -y install git
```

# Run script
At first Execute following commands for clone repository:
```sh
$ cd
$ git clone https://github.com/karaage0703/raspberry-pi-setup
$ cd raspberry-pi-setup
```


## Raspbian Buster setup case
Execute following commands:
```sh
$ ./setup-raspbian-buster.sh
```

## Shrink Raspbian Jessie
Execute following commands if you want to shrink raspbian:
```sh
$ ./shrink-raspbian-stretch_jessie.sh
```

## ROS on Raspbian setup case
Execute following commands:
```sh
$ ./setup-ros-indigo-raspbian.sh
```

## ROS on Ubuntu setup case
Install Ubuntu 14.04 to raspberry pi before setup.

Execute following commands:
```sh
$ ./setup-ros-indigo-ubuntu.sh
```

## Reboot
After setup, please reboot by executing following command:
```sh
$ sudo shutdown -r now
```

Raspberry Pi setup is done!
