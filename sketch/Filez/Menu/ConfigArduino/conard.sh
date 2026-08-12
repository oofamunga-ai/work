#!/bin/bash

COV=~/work/sketch/Filez/sourceCode/arduino_Stuff

cd $COV
sudo rm -r micronucleus
git clone https://github.com/micronucleus/micronucleus
cd micronucleus/commandline
make clean && make
sudo rm -r ~/.arduino15/packages/digistump/tools/micronucleus/2.0a4/micronucleus
cp micronucleus ~/.arduino15/packages/digistump/tools/micronucleus/2.0a4
sudo cp 49-micronucleus.rules /etc/udev/rules.d/49-micronucleus.rules
cd $COV
sudo rm -r avr-dummy
git clone https://github.com/digistump/avr-dummy
cd avr-dummy
make clean && make
sudo rm -r ~/.arduino15/packages/digistump/tools/micronucleus/2.0a4/launcher
cp avrdude ~/.arduino15/packages/digistump/tools/micronucleus/2.0a4/launcher
