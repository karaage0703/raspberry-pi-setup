# raspberry-pi-setup
raspberry pi auto setup script

## Install Package
- JAPANESE environment(fonts-vlgothic, ibus-mozc)
- VNC Server(tightvncserver)
- Editor(vim,vim-gtk)
- Terminal(gnome-terminal)
- Pertition tool(gparted)
- Virtual Terminal(byobu)

## Setting
- Custom `.bashrc`
- Custom `/boot/config.txt`
- Auto start VNC

# Preparation
- Make SD disk of Raspbian Jessie
- Network Enable

# Run script
Execute following commands to install Git (If Git is not installed):
```sh
$ sudo apt-get update
$ sudo apt-get -y install git
```

Execute following commands:
```sh
$ cd
$ git clone https://github.com/karaage0703/raspberry-pi-setup
$ cd raspberry-pi-setup
$ ./setup-raspbian-jessie.sh
```

At the end of script, set the password for vnc.

Then please reboot
```sh
$ sudo shutdown -r now
```

Raspberry Pi setup is done!
