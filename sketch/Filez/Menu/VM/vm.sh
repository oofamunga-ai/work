#!/bin/bash

echo "Where do you want the VMz stored?"
read vm

echo "where is the ISOz stored?"
read iso

sudo virt-install --name=debian \
--os-type=Linux \
--os-variant=debiantesting \
--vcpu=2 \
--ram=2048 \
###--disk path=~/mnt/drive2/Vmz/Debian.qcow2,size=200 \
###--disk path=$vm/Vmz/Debian.qcow2,size=200 \
--graphics spice \
##--location=~/mnt/drive2/ISOz/debian-testing-amd64-DVD-1.iso \
--location=$iso/ISOz/debian-testing-amd64-DVD-1.iso \
--network bridge:virbr0

sudo virt-install --name=kali \
--os-type=Linux \
--os-variant=debiantesting \
--vcpu=2 \
--ram=2048 \
##--disk path=~/mnt/drive2/Vmz/kali.qcow2,size=200 \
--disk path=$vm/Vmz/kali.qcow2,size=200 \
--graphics spice \
##--location=~/mnt/drive2/ISOz/kali-linux-2023-W09-installer-amd64.iso \
--location=$iso/ISOz/kali-linux-2023-W09-installer-amd64.iso \
--network bridge:virbr0

sudo virt-install --name=xubuntu \
--os-type=Linux \
--os-variant=debiantesting \
--vcpu=2 \
--ram=2048 \
##--disk path=~/mnt/drive2/Vmz/xubuntu.qcow2,size=200 \
--disk path=$vm/Vmz/xubuntu.qcow2,size=200 \
--graphics spice \
##--location=~/mnt/drive2/ISOz/xubuntu-22.04.2-desktop-amd64.iso \
--location=$iso/ISOz/xubuntu-22.04.2-desktop-amd64.iso \
--network bridge:virbr0
