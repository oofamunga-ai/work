#!/bin/bash


mkdir -p $HOME/sourceCode/arm/android
mkdir -p $HOME/sourceCode/arm/android/os
git config --global user.email "."
git config --global user.name "."
#mkdir -p $HOME/sourceCode/arm/android/kernel
cd $HOME/sourceCode/arm/android/os
repo init -u https://android.googlesource.com/platform/manifest -b android-latest-release --depth=1
repo sync -qc -j4
#nproc --all
#repo sync -c -j$(nproc)
source build/envsetup.sh
#lunch aosp_bluejay
lunch asop_bluejay-trunk_staging-userdebug
#lunch aosp_bluejay-userdebug
m droid -j4
#m
