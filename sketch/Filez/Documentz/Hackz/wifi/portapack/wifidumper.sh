#!/bin/bash

sudo systemctl stop wpa_supplicant
sudo service NetworkManager stop
sudo ifconfig wlan0 down
sudo macchanger -r wlan0
sudo ifconfig wlan0 up
sudo hcxdumptool -i wlan0 -o Wi-Fi_PMKID.pcapng --disable_deauthentication --disable_client_attacks --enable_status=3

