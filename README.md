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

## Raspbian Jessie setup case
Execute following commands(last command takes about half an hour):
```sh
$ cd
$ git clone https://github.com/karaage0703/raspberry-pi-setup
$ cd raspberry-pi-setup
$ ./setup-raspbian-jessie.sh
```
At the end of script, set the password for vnc.

## Raspbian Jessie LITE setup case
Execute following commands(last command takes about half an hour):
```sh
$ cd
$ git clone https://github.com/karaage0703/raspberry-pi-setup
$ cd raspberry-pi-setup
$ ./setup-raspbian-jessie-lite.sh
```

## ROS on Raspbian setup case
Execute following commands:
```sh
$ cd
$ git clone https://github.com/karaage0703/raspberry-pi-setup
$ cd raspberry-pi-setup
$ ./setup-ros-raspbian.sh
```
## Reboot
After setup, please reboot by executing following command:
```sh
$ sudo shutdown -r now
```

Raspberry Pi setup is done!
