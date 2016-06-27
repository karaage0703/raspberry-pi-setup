# raspberry-pi-setup
raspberry pi auto setup script


# Make SD disk of Raspbian Jessie


# Network Enable
Plug Ether cable or setup wifi

# Set keyboard
Run raspi-config and set keyboard

# Run script
Open terminal


Execute following commands to install Git (If Git is not installed):
```sh
$ sudo apt-get update
$ sudo apt-get install git
```

Execute following commands:
```sh
$ cd
$ git clone https://github.com/karaage0703/raspberry-pi-setup
$ cd raspberry-pi-setup
$ ./setup-raspbian-jessie.sh
```

# Vncboot setting
```sh
$ sudo /etc/init.d/vncboot start
```
Setting password
