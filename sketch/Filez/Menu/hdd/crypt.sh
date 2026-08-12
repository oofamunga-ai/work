#!/bin/bash

echo "What Drive?"
read bunz
sudo cryptsetup luksFormat --type luks1 /dev/$bunz
sudo cryptsetup -v luksOpen /dev/$bunz drive1
sudo mkfs.ext4 /dev/mapper/drive1
sudo cryptsetup luksClose drive1

echo "########################################"
echo "########################################"

echo "any other drives or partition?"
read nugz
if [ $nugz = 'yes' ] || [ $nugz = 'YES' ] || [ $nugz = 'y' ] || if [ $nugz = 'Y' ]; then
sudo cryptsetup luksFormat --type luks1 /dev/$nugz
sudo cryptsetup -v luksOpen /dev/$nugz drive2
sudo mkfs.ext4 /dev/mapper/drive2
sudo cryptsetup luksClose drive2
   else
	echo "cool Thank You For Your Time ;-P"
fi
