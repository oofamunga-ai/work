#!/bin/bash

CHEZ=~/work
VMN=~/mnt/drive2/ISOz
FPMLU=~/mnt/drive2/Vmz
LU=~/mnt/drive2/Downloadz

if [ -e "$CHEZ" ]; then
    echo "$CHEZ exists."
else
sudo cp -Rv work ~/work
cd ~
sudo chown -R $USER:$USER ~/work
fi
~/work/sketch/Filez/Menu/hdd/crypt.sh
sudo mount /dev/sda2 ~/mnt/drive2
if [ -e "$LU" && "$VMN" && "$FPMLU" ]; then
    echo "$LU $VMN $FPMLU exists."
else
sudo cp -Rv Downloadz ~/mnt/drive2
sudo mkdir -p ~/mnt/drive2/ISOz
sudo mkdir -p ~/mnt/drive2/Vmz
fi
cd ~/work/sketch/Filez/Menu/VM
./vm.sh

./menuSYStem.sh
