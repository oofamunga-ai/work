#!/bin/bash

echo Hello World

mvSource() {
###FILE=~/work/sources.list
FILE=~/pancake
BOBO=~/work
YUM=/etc/sources.list.bak
if [ -f "$BOBO" ]; then
    echo "$BOBO exists."
else 
mkdir ~/work
cd ~/work
sudo apt update
sudo apt -y install git
git clone https://github.com/blurp65/pancake.git
fi
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else 
    echo "$FILE does not exist."
    ###wget -O sources.list https://raw.githubusercontent.com/shell832/pancake/main/sources.list
       if [ -f "$YUM" ]; then
       echo "$YUM exists."
    else 
        sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak
        sudo cp pancake/sources.list /etc/apt/sources.list
    fi
fi
}

keys() {
echo "Adding GPG Keys"
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 0E98404D386FA1D9
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 54404762BBB6E853
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 7EA0A9C3F273FCD8
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 112695A0E562B32A
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ED444FF07D8D0BF6
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 871920D1991BC93C
###curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o $/usr/share/keyrings/docker-archive-###keyring.gpg
}

update() {
echo "Updating System"
sudo apt update
echo "installing acrh'z"
###sudo dpkg --add-architecture i386
sudo dpkg --add-architecture armhf
###sudo dpkg --add-architecture armel
sudo dpkg --add-architecture arm64
###echo "Fixings"
###sudo sed -i 's/\bdeb\b/& [arch=arm64,armhf,amd64,i386]/' /etc/apt/sources.list.d/cros.list
echo insatalling development packages
sudo apt install -y gnupg lsb-release build-essential zip curl zlib1g-dev libc6-dev libncurses5 x11proto-core-dev libx11-dev libgl1-mesa-dev libxml2-utils xsltproc unzip fontconfig libncurses-dev gawk openssl libssl-dev dkms libelf-dev libudev-dev libpci-dev libiberty-dev autoconf sed make cmake binutils gcc-11 gcc-11-arm-linux-gnueabihf g++-11 g++-11-arm-linux-gnueabihf patch gzip bzip2 perl tar cpio unzip rsync file bc wget python-all python-all-dev python-all-dbg python3-all python3-all-dbg python3-all-dev qt3d5-dev qt3d5-dev-tools gtk2-engines glade cvs git subversion rsync asciidoc w3m graphviz flex bison swig bmap-tools f2fs-tools qemu-system-x86 qemu-user-static binfmt-support squashfs-tools-ng apt-transport-https ca-certificates curl gnupg-agent software-properties-common dialog libgtk2.0-dev libglib2.0-dev libglade2-dev qemu-system libvirt-daemon-system libvirt-clients bridge-utils virtinst virt-manager uuid uuidcdef  gitk git-gui curl lvm2 thin-provisioning-tools python3-pkg-resources python3-virtualenv python3-oauth2client xz-utils nano screen fakeroot uuid-runtime uuid-dev hackrf dfu-util gcc-arm-none-eabi
sudo apt dist-upgrade
}

rmDock() {
echo "Removing Docker"
sudo apt remove docker docker-engine docker.io containerd runc
}

instDock() {
###JLOVEF=/usr/share/keyrings/docker-ce-archive-keyring.gpg
###echo "Installing Docker"
###echo "Getting Cert"
###if [ -f "$JLOVEF" ]; then
###    echo "$JLOVEF exists."
###else 
###sudo curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-ce-archive-keyring.gpg
echo "Installing Repo"
sudo echo "deb [arch=armhf] https://download.docker.com/linux/debian bullseye nightly"  | sudo tee /etc/apt/sources.list.d/docker.list
###fi
echo "Updating and Installing Docker"  ###Debug Message
sudo apt update
sudo apt -y install docker containerd.io
}

buildKernel() {
echo "Downloading kernel building files" 
###sudo apt build-dep linux-image-$(uname -r)
}

cleanUP() {
meFlunk=~/pancake
echo "Removing unNeeded Packages"
sudo apt -y autoremove
if [ -f "$meFlunk" ]; then
    echo "$meFlunk exists."
sudo rm -r ~/pancake
fi
cd ~/work/pancake
}

mvSource
keys
update
###rmDock
###instDock
###buildKernel
cleanUP