#!/bin/bash

cd $HOME
mkdir -p $HOME/sourceCode/arm/raspPi
cd $HOME/sourceCode/arm/raspPi
#wget -nc -O ~/sourceCode/arm/buildroot-2023.11.1.tar.gz https://buildroot.org/downloads/buildroot-2023.11.1.tar.gz
git clone https://gitlab.com/buildroot.org/buildroot.git --recursive
#if here to not untar
#tar -xvf buildroot-2023.11.1.tar.gz
cd $HOME/sourceCode/arm/raspPi/buildroot
make raspberrypi0_defconfig
#make all
make xconfig
make all
