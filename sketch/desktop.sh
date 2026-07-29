#!/bin/bash

echo "Desktop Installer"
read blaz
sudo apt-get update
sudo apt-get -y install xfce4* firefox gdm3 virt-manager
sudo apt-get -y install seabios virt-top qemu-efi* qemu-system-misc qemu-user qemu-system-x86-microvm qemu-system-arm qemu-system qemu-guest-agent
sudo apt-get -y install rpi-imager
sudo apt-get dist-upgrade
#sudo reboot 
