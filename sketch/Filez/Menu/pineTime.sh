#!/bin/bash


pineTime() {

mkdir -p $HOME/sourceCode/pine
cd $HOME/sourceCode/pine
git clone https://github.com/InfiniTimeOrg/InfiniTime.git
cd $HOME/sourceCode/pine/InfiniTime
git submodule update --init
git pull
git add .
git commit -m "."
docker run --rm -it -v ${PWD}:/sources --user $(id -u):$(id -g) infinitime/infinitime-build
#python -m venv .venv
#virtualenv .venv
#source .venv/bin/activate
#python -m pip install wheel
#python -m pip install -r $HOME/sourceCode/pine/InfiniTime/tools/mcuboot/requirements.txt 
#sudo pip install wheel --break-system-packages
#sudo pip install -r $HOME/sourceCode/pine/InfiniTime/tools/mcuboot/requirements.txt --break-system-packages
#sudo pip install adafruit-nrfutil --break-system-packages
#sudo apt install npm
#sudo npm install lv_font_conv
#mkdir $HOME/sourceCode/pine/InfiniTime/build
#cd $HOME/sourceCode/pine/InfiniTime/build
#wget -nc https://developer.nordicsemi.com/nRF5_SDK/nRF5_SDK_v15.x.x/nRF5_SDK_15.3.0_59ac345.zip
#if statement to skip if
#unzip nRF5_SDK_15.3.0_59ac345.zip
#wget -nc https://armkeil.blob.core.windows.net/developer/Files/downloads/gnu-rm/10.3-2021.10/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux.tar.bz2
#if statement
#tar -xvf gcc-arm-none-eabi-10.3-2021.10-x86_64-linux.tar.bz2
#cmake -DARM_NONE_EABI_TOOLCHAIN_PATH=gcc-arm-none-eabi-10.3-2021.10-x86_64-linux -DNRF5_SDK_PATH=nRF5_SDK_15.3.0_59ac345 ..
#cd $HOME/work/sketch/Filez/sourceCode/pine/InfiniTime
#make -j4 pinetime-app
#make -j
}

pineTime
