# service file
systemd config files

# Preparation
Install following packages:
- webiopi
- hostapd

# Setup file
Execute following commands:
```sh
$ sudo cp *.service /etc/systemd/system/
```
# Run service
Execute following command:
```sh
$ sudo systemctrl start <service name>
```

# Author
`webiopi.service` from https://github.com/neuralassembly/raspi/
