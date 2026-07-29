#!/bin/bash

SMLU=~/mnt/drive1/work
NOW=$(date +"%m-%d-%y_%T")

###menu backup and/or encrypt

echo "Backing Up"
sudo mkdir -p ~/mnt/drive1 ~/mnt/drive2
sudo mount /dev/sda1 ~/mnt/drive1
if [ -e "$SMLU" ]; then
    echo "$SMLU exists."
else
echo "Moving"
sudo mv $SMLU $SMLU.old
#sudo rm -r ~/mnt/drive1/work
fi
sudo cp -Rv ~/work ~/mnt/drive1/$NOW.work
sudo rm -r ~/mnt/drive1/$NOW.work/sketch/Filez/Appz/*
sudo rm -r ~/mnt/drive1/$NOW.work/sketch/Filez/Downloadz/*
sudo umount ~/mnt/drive1
echo "all done"
