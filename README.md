# raspberry-pi-setup
raspberry pi auto setup script

## Install Package
### Raspberry Pi OS Buster
- JAPANESE environment(fonts-vlgothic, ibus-mozc)
- Editor(vim,vim-gtk)
- Terminal(gnome-terminal)
- Partition tool(gparted)
- Virtual Terminal(byobu)

## Setting
### Preparation
- Installing Raspberry Pi OS to SD Card
- Insert SD disk to Raspberry Pi
- Network Enable (Ether or WiFi)
- Raspberry Pi power on
- Install Git(Only for old raspbian)

## Run script
At first Execute following commands for clone repository:
```sh
$ cd && git clone https://github.com/karaage0703/raspberry-pi-setup
$ cd raspberry-pi-setup
```

### Update .bashrc
Execute following command:

```sh
$ curl -s https://raw.githubusercontent.com/karaage0703/ubuntu-setup/master/bashrc.patch >> ~/.bashrc
```

### Setup AI environment
Execute following command:

```sh
$ ./setup-ai.sh
```

### Raspberry Pi OS setup case
Execute following commands:
```sh
$ ./setup-raspbian-buster.sh
```

### Shrink Raspbian Jessie
Execute following commands if you want to shrink raspbian:
```sh
$ ./shrink-raspbian-stretch_jessie.sh
```

### ROS on Raspberry Pi OS setup case
Execute following commands:
```sh
$ ./setup-ros-indigo-raspbian.sh
```

### ROS on Ubuntu setup case
Install Ubuntu 14.04 to raspberry pi before setup.

Execute following commands:
```sh
$ ./setup-ros-indigo-ubuntu.sh
```

### Setup PC98 emulator

```sh
$ curl -s https://raw.githubusercontent.com/karaage0703/raspberry-pi-setup/master/setup-np2pi.sh | /bin/bash
```

## License
This software is released under the MIT License, see LICENSE.

## Authors
- [karaage0703](https://twitter.com/karaage0703)
