#!/bin/bash

echo "building buildroot for pine Ox64"
read cbox
mkdir -p $HOME/sourceCode/arm/ox64
cd $HOME/sourceCode/arm/ox64
#mkdir buildroot_bouffalo
#cd $HOME/sourceCode/arm/ox64/buildroot_bouffalo
git clone https://github.com/buildroot/buildroot
git clone https://github.com/openbouffalo/buildroot_bouffalo
export BR_BOUFFALO_OVERLAY_PATH=$(pwd)/buildroot_bouffalo
cd $HOME/sourceCode/arm/ox64/buildroot
make -j1 BR2_EXTERNAL=$BR_BOUFFALO_OVERLAY_PATH pine64_ox64_full_defconfig
make xconfig
make -j1
