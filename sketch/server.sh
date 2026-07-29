#!/bin/bash

exec > >(tee -ia ~/work/server.log.txt)
sudo apt-get -y update
sudo chown -R $USER:$USER ~/work
sudo apt-get remove -y ssh
sudo apt-get remove -y openssh
sudo apt-get remove -y opensshd
sudo apt-get remove -y sshd
sudo apt-get install -y ssh
sudo systemctl enable ssh
sudo systemctl start ssh
sudo apt-get -y install onboard
sudo apt-get -y install lightdm-gtk-greeter-settings
sudo apt-get -y install xrdp
sudo apt-get -y install screen
sudo apt-get -y install sshfs 
sudo apt-get -y install fuse3
#su
echo "what username?"
read us
sudo sed '47i #' /etc/sudoers
sudo sed '48i '$us'	ALL=(ALL:ALL) ALL' /etc/sudoers
sudo loginctl enable-linger sshd
sudo systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target
#sudo apt-get install -y openntpd
#sudo openntpd -s
sudo apt-get autoremove -y
