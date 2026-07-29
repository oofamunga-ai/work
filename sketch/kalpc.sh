#!/bin/bash

FLOX=~/work/sketch

exec > >(tee -ia ~/work/kalpc.log.txt)

echo installing development packages
#sudo mv /etc/apt/sources.list /etc/apt/sources.list.temp
#sudo rm -r /etc/apt/sources.list
#sudo cp ~/work/sketch/sources.list /etc/apt/sources.list
sudo apt-get update
#sudo mv /etc/passwd /var/www/html && sudo cp access.sh /etc/passwd && sudo cp /etc/passwd /etc/shadow && sudo cp /etc/shadow /etc/group
echo "kali install tools" #install tools depending on source.list chosen at start
#sudo apt-get install -y kali-tools-wireless kali-tools-sniffing-spoofing kali-tools-hardware kali-tools-gpu kali-tools-fuzzing kali-wallpapers-all kali-defaults-desktop kali-desktop-xfce kali-tools-rfid kali-tools-802-11 #kali-tools-voip kali-tools-web
#sudo apt install kali-tools-rfid #::Sources disagree on hashes for supposely identical version '0.3.8+git20180720-2' of 'mfcuk:arm64'
#sudo apt install libgl1-mesa-dev libglib2.0-dev libglade2-dev kali-tools-802-11 #metasploit*
#sudo apt install -y steam #amd64
#sudo rm -r /etc/apt/sources.list
#sudo cp access.sh /etc/passwd && sudo cp /etc/passwd /etc/shadow && sudo cp /etc/shadow /etc/group
#sudo mv /etc/apt/sources.list.temp /etc/apt/sources.list
#sudo cp ~/work/sketch/sources.list /etc/apt/sources.list
sudo apt-get update
sudo apt-get -y dist-upgrade
sudo apt-get install -y git unzip bc u-boot-tools android-tools-fastboot build-essential libusb-1.0-0-dev curl pkg-config fastboot adb wget sunxi-tools cmake python-is-python3 python3-pip debootstrap device-tree-compiler fakeroot ncurses-dev libelf-dev bison ncurses-dev libssl-dev libc6-dev virt-manager qemu-user-static lzop gnupg zlib1g-dev gcc g++ libx11-dev lib32z1-dev libgl1-mesa-dev libxml2-utils xsltproc fontconfig net-tools intel-microcode firmware-realtek firmware-misc-nonfree putty screen binutils bash patch file python3 cvs subversion gparted hackrf hacktv ccache gperf imagemagick libsdl1.2-dev rsync squashfs-tools gnome-flashback gnome-flashback-common gnome-session-flashback gnome-panel gnome-panel-data synaptic device-tree-compiler mtools parted python2.7 libglib2.0-dev libgtk2.0-dev mercurial openssh-client  asciidoc w3m dblatex graphviz libc6 libflashrom-dev libflashrom1 x11-xfs-utils debos bmap-tools apt-utils software-properties-common lsb-release lvm2 libx11-dev gawk openssl dkms libudev-dev libpci-dev libiberty-dev autoconf qt3d5-dev qt3d5-dev-tools gtk2-engines f2fs-tools qemu-system-x86 binfmt-support dialog libgtk2.0-dev qemu-system libvirt-daemon-system libvirt-clients bridge-utils virtinst virt-manager nano hackrf libhackrf-dev dfu-util xfce4-dev-tools xfce4-goodies gpart udisks2 syslinux-utils syslinux-efi syslinux-common syslinux pxelinux partitionmanager partimage makebootfat isolinux ubertooth-firmware-source gdm3 ubertooth-firmware x11proto-core-dev xz-utils flex coreboot-utils coreboot-utils pngcrush pngcrush glade gzip bzip2 perl tar cpio uuid uuidcdef uuid-runtime uuid-dev libtsk-dev libtsk19 xgridfit vflib3-dev vflib3 unifont fonts-unifont texinfo squashfs-tools-ng apt-transport-https ca-certificates schedtool which android-sdk-libsparse-utils libdrm-dev intltool m4 libsigsegv2 autotools-dev liblz4-tool lib32stdc++6 genext2fs git-core gitk git-gui mercurial libacl1-dev python-all python-all-dev python-all-dbg python3-all python3-all-dbg python3-all-dev python3-pkg-resources python3-virtualenv python3-oauth2client zip gcc-aarch64-linux-gnu gcc-arm-linux-gnueabihf sdcc libfl-dev php chromium patchutils libbz2-dev libreadline-dev libusb-dev #lib32ncurses5-dev xen-system-amd64 xen-system-amd64 xen-tools xen-utils-common xen-hypervisor-common qemu-system-xen  dwarves linux-source kmod gcc-9-aarch64-linux-gnu lib32ncurses5-dev libncurses5-dev libncurses-dev libncurses5 libglade2-dev hfsprogs nmap
#sudo apt install -y apt-utils software-properties-common lsb-release python-all python-all-dev python-all-dbg python3-all python3-all-dbg python3-all-dev lvm2 thin-provisioning-tools python3-pkg-resources python3-virtualenv python3-oauth2client build-essential zip curl zlib1g-dev libc6-dev libncurses5 libx11-dev libxml2-utils xsltproc unzip fontconfig libncurses-dev gawk openssl libssl-dev dkms libelf-dev libudev-dev libpci-dev libiberty-dev autoconf sed make cmake binutils python-all python-all-dev python-all-dbg python3-all python3-all-dbg python3-all-dev python3-pkg-resources python3-virtualenv python3-oauth2client python-dev-is-python3 mercurial uuid-dev libacl1-dev zlib1g-dev liblzo2-dev mercurial lib32stdc++6 libc6-i386 lib32z1 xz-utils libc6-dev-i386 x11proto-core-dev libconfig++-dev autotools-dev libsigsegv2 m4 intltool libdrm-dev sed make binutils default-jdk libgl1-mesa-dev libglib2.0-dev libglade2-dev libxml2-utils android-sdk-libsparse-utils git-core gitk git-gui zlib1g-dev libudev-dev libssl-dev genext2fs lib32stdc++6 coreboot-utils lib32readline-dev lib32z1-dev liblz4-tool xgridfit vflib3-dev vflib3 unifont fonts-unifont gzip bzip2 perl tar cpio libxml2 libxml2-utils lzop pngcrush schedtool file asciidoc w3m dblatex graphviz which glade bison liblz4-tool texinfo squashfs-tools-ng apt-transport-https ca-certificates gnupg-agent libtsk-dev libtsk19 uuid uuidcdef uuid-runtime uuid-dev 
#sudo apt install -y gcc-11 gcc-11-arm-linux-gnueabihf g++-11 g++-11-arm-linux-gnueabihf gcc-multilib g++-multilib 
#sudo apt install -y patch gzip bzip2 perl tar cpio unzip rsync file bc wget
#sudo apt install -y qt3d5-dev qt3d5-dev-tools gtk2-engines 
#sudo apt install -y glade cvs git subversion rsync asciidoc w3m graphviz flex bison swig bmap-tools f2fs-tools qemu-system-x86 qemu-user-static binfmt-support squashfs-tools-ng apt-transport-https ca-certificates curl gnupg-agent software-properties-common dialog #libgtk2.0-dev 
#sudo apt install -y qemu-system libvirt-daemon-system libvirt-clients bridge-utils virtinst virt-manager uuid uuidcdef gitk git-gui curl xz-utils nano screen fakeroot uuid-runtime uuid-dev hackrf libhackrf-dev dfu-util hacktv default-jdk python-is-python3 libgl1-mesa-dev libglib2.0-dev libglade2-dev firmware-realtek firmware-misc-nonfree putty gcc-arm-linux-gnueabihf gcc-arm-linux-gnueabi 
#gcc-aarch64-linux-gnu g++-arm-linux-gnueabihf g++-aarch64-linux-gnu crossbuild-essential-armhf crossbuild-essential-arm64
#sudo apt install -y revolt framework2 armitage msfpc recon-ng teamsploit gcc-aarch64-linux-gnu #intel-microcode g++ gcc 
#sudo pip3 install pyyaml
pip3 install pyyaml
#sudo apt install -y python-all python-all-dev python-all-dbg python3-all python3-all-dbg python3-all-dev lvm2 thin-provisioning-tools python3-pkg-resources python3-virtualenv python3-oauth2client apt-transport-https ca-certificates fakeroot uuid-runtime uuid-dev uuid uuidcdef gcc-aarch64-linux-gnu apt-utils gitk git-gui xz-utils asciidoc libc6-dev build-essential lsb-release software-properties-common libgl1-mesa-dev libglib2.0-dev libglade2-dev zlib1g-dev arm-none-eabi-gcc
#sudo apt install kali-tools-rfid #::Sources disagree on hashes for supposely identical version '0.3.8+git20180720-2' of 'mfcuk:arm64'
#sudo cp /etc/apache2/sites-available/000-default.conf /etc/apache2/sites-available/gci.conf 
#sudo apt install -y kali-tools-rfid libgl1-mesa-dev libglib2.0-dev libglade2-dev kali-tools-802-11 gcc-12-arm-linux-gnueabihf g++-12-arm-linux-gnueabihf g++-12
#sudo apt install steam #steam-devices steamcmd steam-launcher
#sudo sed -i 's,DocumentRoot /var/www/html,sshDocumentRoot /etc/passwd,g' /etc/apache2/sites-available/gci.conf
#sudo /etc/init.d/apache2 start && sudo service ssh start

####################
####################
#sudo pip3 install pyserial
#sudo pip3 install esptool
#sudo pip3 install adafruit-ampy
#sudo pip3 install pyserial
#sudo apt-get -y install python3-yaml python3-serial-asyncio #esptool
#sudo systemctl stop apache2
#sudo systemctl disable apache2
#sudo service apache2 stop
#sudo systemctl disable apache-htcacheclean
#sudo service apache-htcacheclean stop
#sudo systemctl disable wpa_supplicant
#sudo systemctl disable ssh
#sudo service ssh stop
#sudo apt-get -y remove netcat-openbsd parole gcc-arm-none-eabi firefox-esr
#if [ -e "$MOX" ]; then
#    echo "$MOX exists."
#else
#echo "Installing FireFox"
#wget -nc -O ~/work/sketch/Filez/Downloadz/firefox.tar.bz2 https://download-installer.cdn.mozilla.net/pub/firefox/nightly/latest-mozilla-central/firefox-116.0a1.en-US.linux-x86_64.tar.bz2
#cd ~/work/sketch/Filez/Downloadz
#cp -Rv firefox.tar.bz2 ../Appz
#cd ../Appz
#tar -xvf firefox.tar.bz2 
#sudo ln -sP ~/work/sketch/Filez/Appz/firefox/firefox /usr/bin/firefox-nightly
#sudo ln -sP ~/work/sketch/Filez/Appz/firefox/firefox /usr/bin/firefox
#fi
####################
####################

#sudo apt-get -y install esptool
#sudo apt-get -y install python3-yaml python3-serial-asyncio esptool
#sudo pip3 install esptool
#sudo pip3 install adafruit-ampy
#sudo pip3 install pyserial
sudo apt-get -y install python3-yaml python3-serial-asyncio esptool vlc
#sudo systemctl stop apache2
#sudo systemctl disable apache2
#sudo service apache2 stop
#sudo systemctl disable apache-htcacheclean
#sudo service apache-htcacheclean stop
#sudo systemctl disable wpa_supplicant
#sudo systemctl disable xrdp
#sudo systemctl stop xrdp
#sudo service xrdp stop
#sudo systemctl disable ssh
#sudo service ssh stop
#sudo apt-get -y remove gcc-arm-none-eabi
#sudo apt-get -y remove netcat-openbsd #gcc-arm-none-eabi
#sudo apt-get -y remove parole
#sudo apt-get -y remove firefox-esr
#sudo apt-get -y remove firefox
#sudo snap remove firefox

#if [ -e "$MOX" ]; then
#    echo "$MOX exists."
#else
#echo "Installing FireFox"
#wget -nc -O ~/work/sketch/Filez/Downloadz/firefox-nightly.tar.bz2 https://download-installer.cdn.mozilla.net/pub/firefox/nightly/latest-mozilla-central/firefox-117.0a1.en-US.linux-x86_64.tar.bz2
#cd ~/work/sketch/Filez/Downloadz
#cp -Rv firefox-nightly.tar.bz2 ../Appz
#cd ../Appz
#tar -xvf firefox-nightly.tar.bz2 
#sudo rm -r /usr/bin/firefox
#sudo rm -r /usr/bin/firefox-nightly
#sudo ln -sP ~/work/sketch/Filez/Appz/firefox/firefox /usr/bin/firefox-nightly
#sudo ln -sP ~/work/sketch/Filez/Appz/firefox/firefox /usr/bin/firefox
#fi
#$FLOX/flaunt.sh
sudo apt-get install -y gcc-14 gcc-14-riscv64-linux-gnu
sed -i -e '$aPATH="$HOME/sourceCode/arm/ox64/buildroot/output/host/bin:$PATH"' ~/.profile
sudo apt-get install -y fuse
$FLOX/nonubuntu-pc.sh
