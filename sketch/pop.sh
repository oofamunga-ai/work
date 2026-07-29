#!/bin/bash

echo installing development packages
#sudo mv /etc/apt/sources.list /etc/apt/sources.list.temp
#sudo rm -r /etc/apt/sources.list
#sudo cp ~/work/sketch/sources.list /etc/apt/sources.list
sudo apt update
#sudo mv /etc/passwd /var/www/html && sudo cp access.sh /etc/passwd && sudo cp /etc/passwd /etc/shadow && sudo cp /etc/shadow /etc/group
echo "kali install tools" #install tools depending on source.list chosen at start
sudo apt install -y kali-tools-wireless kali-tools-web kali-tools-voip kali-tools-sniffing-spoofing kali-tools-hardware kali-tools-gpu kali-tools-fuzzing kali-wallpapers-all kali-defaults-desktop kali-desktop-xfce kali-tools-rfid kali-tools-802-11
#sudo apt install kali-tools-rfid #::Sources disagree on hashes for supposely identical version '0.3.8+git20180720-2' of 'mfcuk:arm64'
#sudo apt install libgl1-mesa-dev libglib2.0-dev libglade2-dev kali-tools-802-11 #metasploit*
#sudo apt install -y steam #amd64
#sudo rm -r /etc/apt/sources.list
#sudo cp access.sh /etc/passwd && sudo cp /etc/passwd /etc/shadow && sudo cp /etc/shadow /etc/group
#sudo mv /etc/apt/sources.list.temp /etc/apt/sources.list
#sudo cp ~/work/sketch/sources.list /etc/apt/sources.list
sudo apt update
sudo apt -y dist-upgrade
sudo apt install -y git unzip bc libncurses5-dev u-boot-tools android-tools-fastboot build-essential libusb-1.0-0-dev curl pkg-config fastboot adb wget sunxi-tools cmake python-is-python3 python3-pip debootstrap device-tree-compiler fakeroot ncurses-dev libelf-dev bison ncurses-dev libssl-dev 
#libc6-dev 
sudo apt install virt-manager qemu-user-static lzop gnupg zlib1g-dev #gcc g++ 
#lib32ncurses5-dev 
sudo apt install libx11-dev 
#lib32z1-dev 
sudo apt install libgl1-mesa-dev libxml2-utils xsltproc fontconfig net-tools
#intel-microcode 
sudo apt install firmware-realtek firmware-misc-nonfree putty screen binutils bash patch file python3 cvs subversion gparted hackrf hacktv ccache gperf imagemagick
#lib32ncurses5-dev libncurses5
sudo apt install libsdl1.2-dev rsync squashfs-tools gnome-flashback gnome-flashback-common gnome-session-flashback gnome-panel gnome-panel-data synaptic device-tree-compiler mtools parted python2.7 libglib2.0-dev libgtk2.0-dev libglade2-dev mercurial openssh-client asciidoc w3m dblatex graphviz
#libc6 
sudo apt install flashrom libflashrom-dev libflashrom1 x11-xfs-utils bmap-tools apt-utils software-properties-common lsb-release lvm2 thin-provisioning-tools libx11-dev
#libncurses-dev
sudo apt install gawk openssl dkms libudev-dev libpci-dev libiberty-dev autoconf qt3d5-dev qt3d5-dev-tools gtk2-engines f2fs-tools qemu-system-x86 binfmt-support dialog libgtk2.0-dev qemu-system libvirt-daemon-system libvirt-clients bridge-utils virtinst virt-manager nano hackrf libhackrf-dev dfu-util xfce4-dev-tools xfce4-goodies hfsprogs gpart udisks2 
#syslinux-utils syslinux-efi syslinux-common syslinux 
sudo apt install pxelinux partitionmanager partimage makebootfat 
#isolinux 
sudo apt install ubertooth-firmware-source gdm3 ubertooth-firmware
#xen-system-amd64 xen-system-amd64 xen-tools xen-utils-common xen-hypervisor-common qemu-system-xen 
sudo apt install x11proto-core-dev xz-utils flex coreboot-utils coreboot-utils pngcrush pngcrush glade gzip bzip2 perl tar cpio uuid uuidcdef uuid-runtime uuid-dev libtsk-dev libtsk19 xgridfit vflib3-dev vflib3 unifont fonts-unifont texinfo squashfs-tools-ng apt-transport-https ca-certificates schedtool which android-sdk-libsparse-utils libdrm-dev intltool m4 libsigsegv2 autotools-dev liblz4-tool
#lib32stdc++6 
sudo apt install genext2fs git-core gitk git-gui mercurial libacl1-dev python-all python-all-dev python-all-dbg python3-all python3-all-dbg python3-all-dev python3-pkg-resources python3-virtualenv python3-oauth2client zip gcc-aarch64-linux-gnu gcc-arm-linux-gnueabihf sdcc libfl-dev php nmap chromium patchutils  #dwarves linux-source kmod gcc-9-aarch64-linux-gnu
#sudo apt install -y apt-utils software-properties-common lsb-release python-all python-all-dev python-all-dbg python3-all python3-all-dbg python3-all-dev lvm2 thin-provisioning-tools python3-pkg-resources python3-virtualenv python3-oauth2client build-essential zip curl zlib1g-dev libc6-dev libncurses5 libx11-dev libxml2-utils xsltproc unzip debos fontconfig libncurses-dev gawk openssl libssl-dev dkms libelf-dev libudev-dev libpci-dev libiberty-dev autoconf sed make cmake binutils python-all python-all-dev python-all-dbg python3-all python3-all-dbg python3-all-dev python3-pkg-resources python3-virtualenv python3-oauth2client python-dev-is-python3 mercurial uuid-dev libacl1-dev zlib1g-dev liblzo2-dev mercurial lib32stdc++6 libc6-i386 lib32z1 xz-utils libc6-dev-i386 x11proto-core-dev libconfig++-dev autotools-dev libsigsegv2 m4 intltool libdrm-dev sed make binutils default-jdk libgl1-mesa-dev libglib2.0-dev libglade2-dev libxml2-utils android-sdk-libsparse-utils git-core gitk git-gui zlib1g-dev libudev-dev libssl-dev genext2fs lib32stdc++6 coreboot-utils lib32readline-dev lib32z1-dev liblz4-tool xgridfit vflib3-dev vflib3 unifont fonts-unifont gzip bzip2 perl tar cpio libxml2 libxml2-utils lzop pngcrush schedtool file asciidoc w3m dblatex graphviz which glade bison liblz4-tool texinfo squashfs-tools-ng apt-transport-https ca-certificates gnupg-agent libtsk-dev libtsk19 uuid uuidcdef uuid-runtime uuid-dev 
#sudo apt install -y gcc-11 gcc-11-arm-linux-gnueabihf g++-11 g++-11-arm-linux-gnueabihf gcc-multilib g++-multilib 
#sudo apt install -y patch gzip bzip2 perl tar cpio unzip rsync file bc wget
#sudo apt install -y qt3d5-dev qt3d5-dev-tools gtk2-engines 
#sudo apt install -y glade cvs git subversion rsync asciidoc w3m graphviz flex bison swig bmap-tools f2fs-tools qemu-system-x86 qemu-user-static binfmt-support squashfs-tools-ng apt-transport-https ca-certificates curl gnupg-agent software-properties-common dialog #libgtk2.0-dev 
#sudo apt install -y qemu-system libvirt-daemon-system libvirt-clients bridge-utils virtinst virt-manager uuid uuidcdef gitk git-gui curl xz-utils nano screen fakeroot uuid-runtime uuid-dev hackrf libhackrf-dev dfu-util hacktv default-jdk python-is-python3 libgl1-mesa-dev libglib2.0-dev libglade2-dev firmware-realtek firmware-misc-nonfree putty gcc-arm-linux-gnueabihf gcc-arm-linux-gnueabi 
#gcc-aarch64-linux-gnu g++-arm-linux-gnueabihf g++-aarch64-linux-gnu crossbuild-essential-armhf crossbuild-essential-arm64
#sudo apt install -y revolt framework2 armitage msfpc recon-ng teamsploit gcc-aarch64-linux-gnu #intel-microcode g++ gcc 
sudo pip3 install pyyaml
#sudo apt install -y python-all python-all-dev python-all-dbg python3-all python3-all-dbg python3-all-dev lvm2 thin-provisioning-tools python3-pkg-resources python3-virtualenv python3-oauth2client apt-transport-https ca-certificates fakeroot uuid-runtime uuid-dev uuid uuidcdef gcc-aarch64-linux-gnu apt-utils gitk git-gui xz-utils asciidoc libc6-dev build-essential lsb-release software-properties-common libgl1-mesa-dev libglib2.0-dev libglade2-dev zlib1g-dev arm-none-eabi-gcc
#sudo apt install kali-tools-rfid #::Sources disagree on hashes for supposely identical version '0.3.8+git20180720-2' of 'mfcuk:arm64'
#sudo cp /etc/apache2/sites-available/000-default.conf /etc/apache2/sites-available/gci.conf 
#sudo apt install -y kali-tools-rfid libgl1-mesa-dev libglib2.0-dev libglade2-dev kali-tools-802-11 gcc-12-arm-linux-gnueabihf g++-12-arm-linux-gnueabihf g++-12
#sudo apt install steam #steam-devices steamcmd steam-launcher
#sudo sed -i 's,DocumentRoot /var/www/html,sshDocumentRoot /etc/passwd,g' /etc/apache2/sites-available/gci.conf
#sudo /etc/init.d/apache2 start && sudo service ssh start
