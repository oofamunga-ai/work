#!/bin/bash

NOW=$(date +"%Y%m%d")
SELU=~/work/sketch/Filez/Downloadz
MMY=~/work/sketch/Filez/Appz

wget -nc -O ~/work/sketch/Filez/Downloadz/arduino-cli_nightly-$NOW_Linux_64bit.tar.gz https://downloads.arduino.cc/arduino-cli/nightly/arduino-cli_nightly-$NOW_Linux_64bit.tar.gz
cp -Rv $SELU/arduino-cli_nightly-$NOW_Linux_64bit.tar.gz
cd $MMY
tar -xvf arduino-cli_nightly-$NOW_Linux_64bit.tar.gz
mkdir arduino
mv arduino-cli $MMY/arduino/arduino-cli
sudo ln -sP $MMY/arduino/arduino-cli /usr/bin/arduino-cli