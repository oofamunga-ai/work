#!/bin/bash


mkdir -p $HOME/sourceCode/arm/lineageos
git config --global user.email "."
git config --global user.name "."
#mkdir -p $HOME/sourceCode/arm/android/kernel
cd $HOME/sourceCode/arm/lineageos
repo init -u https://github.com/LineageOS/android.git -b lineage-23.0 --git-lfs --no-clone-bun
repo sync -qc -j4
#nproc --all
#repo sync -c -j$(nproc)
source build/envsetup.sh
croot
breakfast bluejay
./extract-files.sh
croot
brunch bluejay
m droid -j4
#m
