# raspberry-pi-setup
raspberry pi auto setup script

## Install Package
### Raspbian Jessie
- JAPANESE environment(fonts-vlgothic, ibus-mozc)
- VNC Server(tightvncserver)
- Editor(vim,vim-gtk)
- Terminal(gnome-terminal)
- Pertition tool(gparted)
- Virtual Terminal(byobu)

### Raspbian Jessie LITE
- Editor(vim,vim-gtk)
- Virtual Terminal(byobu)

## Setting
### Raspbian Jessie
- Custom `.bashrc`
- Custom `/boot/config.txt`
- Auto start VNC

### Raspbian Jessie LITE
- Custom `/boot/config.txt`


# Preparation
- Make SD disk of Raspbian Jessie
- Insert SD disk to Raspberry Pi
- Network Enable (Ether or WiFi)
- Raspberry Pi power on
- Install Git

## Git installation
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


## Raspbian Jessie setup case
Execute following commands(last command takes about half an hour):
```sh
$ ./setup-raspbian-jessie.sh
```
At the end of script, set the password for vnc.

## Shrink Raspbian Jessie
Execute following commands if you want to shrink raspbian:
```sh
$ ./shrink-raspbian-jessie.sh
```

## Raspbian Jessie LITE setup case
Execute following commands(last command takes about half an hour):
```sh
$ ./setup-raspbian-jessie-lite.sh
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
