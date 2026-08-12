#!/bin/bash

SKD=~/sourceCode/source
COV=~/work/sketch/Filez/arduino_Stuff
NOW=$(date +"%Y%m%d")
SELU=~/Downloadz
MMY=~/Appz

mkdir -p ~/sourceCode/source
wget -nc -O $SELU/arduino-cli_latest_Linux_64bit.tar.gz https://downloads.arduino.cc/arduino-cli/arduino-cli_latest_Linux_64bit.tar.gz
cp -Rv $SELU/arduino-cli_latest_Linux_64bit.tar.gz $MMY/arduino-cli_latest_Linux_64bit.tar.gz
cd $MMY
tar -xvf arduino-cli_latest_Linux_64bit.tar.gz
#mkdir arduino
#mv arduino-cli $MMY/arduino/arduino-cli
sudo ln -sP $MMY/arduino/arduino-cli /usr/bin/arduino-cli

echo "##################################"
echo "##################################"

#cd $SKD/permaSource
#git clone https://github.com/arduino/arduino-cli.git
#cd arduino-cli
#git pull
#task build
#./install.sh
#sudo ln -sP $SKD/permaSource/arduino-cli /usr/bin/arduino-cli

echo "##################################"
echo "##################################"

cd $COV
sudo rm -r micronucleus
git clone https://github.com/micronucleus/micronucleus
cd micronucleus/commandline
make
sudo mkdir -p ~/.arduino15/packages/digistump/tools/micronucleus/2.0a4/micronucleus
sudo rm -r ~/.arduino15/packages/digistump/tools/micronucleus/2.0a4/micronucleus
cp micronucleus ~/.arduino15/packages/digistump/tools/micronucleus/2.0a4
sudo cp 49-micronucleus.rules /etc/udev/rules.d/49-micronucleus.rules
cd $COV
sudo rm -r avr-dummy
git clone https://github.com/digistump/avr-dummy
cd avr-dummy
make
sudo mkdir -p ~/.arduino15/packages/digistump/tools/micronucleus/2.0a4/launcher
sudo rm -r ~/.arduino15/packages/digistump/tools/micronucleus/2.0a4/launcher
cp avrdude ~/.arduino15/packages/digistump/tools/micronucleus/2.0a4/launcher
sudo chown -R $USER:$USER ~/.arduino15
