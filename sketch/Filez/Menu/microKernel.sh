#!/bin/bash

#Build Instructions

#Instructions for building an x86_64 WSL2 kernel with an Ubuntu distribution are as follows:

#    Install the build dependencies:
     sudo apt install build-essential flex bison dwarves libssl-dev libelf-dev cpio
sudo apt autoremove -y

mkdir -p ~/sourceCode/x86
cd ~/sourceCode/x86
git clone https://github.com/microsoft/WSL2-Linux-Kernel.git
cd ~/sourceCode/x86/WSL2-Linux-Kernel

#    Modify WSL2 kernel configs (optional):
#    make menuconfig KCONFIG_CONFIG=Microsoft/config-wsl
make xconfig KCONFIG_CONFIG=Microsoft/config-wsl
#    Loadable module support is disabled when using a custom built kernel. Set any modules you want to be built-in before building.

#    Build the kernel using the WSL2 kernel configuration:
     #make KCONFIG_CONFIG=Microsoft/config-wsl
     make KCONFIG_CONFIG=.config
#Install Instructions
#Please see the documentation on the .wslconfig configuration file for information on using a custom built kernel.
