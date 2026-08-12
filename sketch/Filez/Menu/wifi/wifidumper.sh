#!/bin/bash

sudo systemctl stop wpa_supplicant
sudo service NetworkManager stop
sudo ifconfig wlx24050fd8e739 down
sudo macchanger -r wlx24050fd8e739
sudo ifconfig wlx24050fd8e739 up
sudo hcxdumptool -i wlx24050fd8e739 -o Wi-Fi_PMKID.pcapng --disable_deauthentication --disable_client_attacks --enable_status=3

