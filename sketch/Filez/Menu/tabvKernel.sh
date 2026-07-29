#!/bin/bash

echo "building Linux Kernel"
mkdir -p $HOME/sourceCode/pc
cd $HOME/sourceCode/pc
#git clone --recurse-submodules https://github.com/daboss7627/linux.git ~/work/sketch/Filez/sourceCode/LinuxKernel
git clone https://github.com/starfive-tech/linux.git -b pinetabv-6.6.y-devel $HOME/sourceCode/pc/tabvKernel
#git clone https://github.com/torvalds/linux.git $HOME/sourceCode/pc/Kernel
cd ~/sourceCode/pc/tabvKernel
git pull
git add .
git commit -m "."
git merge
#cp /boot/config-$(uname -r) .config
#make oldconfig
#make ARCH=arm64 defconfig
#make ARCH=x86_64 x86_64_defconfig
make ARCH=riscv CROSS_COMPILE=riscv64-linux-gnu- xconfig #starfive_jh7110_defconfig
#make ARCH=riscv CROSS_COMPILE=riscv64-linux-gnu- INSTALL_MOD_PATH=./output modules_install
#make xconfig
make ARCH=riscv CROSS_COMPILE=riscv64-linux-gnu- -j$(nproc) bindeb-pkg
#make -j `nproc` bindeb-pkg
#cp -r ~/work/sketch/Filez/builder/pineconfig ~/work/sketch/Filez/sourceCode/linux/.config
#ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make ~/work/sketch/Filez/sourceCode/linux/arch/arm64/configs/defconfig
#make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- xconfig
#ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make -j4 bindeb-pkg KERNELRELEASE="5.9-sunxi64-test" KDEB_PKGVERSION="1"

