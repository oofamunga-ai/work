#!/bin/bash

FLOX=~/work/sketch
MOX=~/work/sketch/Filez/Appz/firefox/firefox 
LUA=~/work/sketch/Filez/Appz
LUG=~/work/sketch/Filez/Downloadz

exec > >(tee -ia ~/work/porta.log.txt)

echo installing development packages
#sudo mv /etc/apt/sources.list /etc/apt/sources.list.temp
#sudo rm -r /etc/apt/sources.list
#sudo cp ~/work/sketch/sources.list /etc/apt/sources.list
sudo apt-get update
#sudo mv /etc/passwd /var/www/html && sudo cp access.sh /etc/passwd && sudo cp /etc/passwd /etc/shadow && sudo cp /etc/shadow /etc/group
echo "kali install tools" #install tools depending on source.list chosen at start
#sudo apt install -y kali-tools-wireless kali-tools-web kali-tools-voip kali-tools-sniffing-spoofing kali-tools-hardware kali-tools-gpu kali-tools-fuzzing kali-wallpapers-all kali-defaults-desktop kali-desktop-xfce kali-tools-rfid kali-tools-802-11
#sudo apt install kali-tools-rfid #::Sources disagree on hashes for supposely identical version '0.3.8+git20180720-2' of 'mfcuk:arm64'
#sudo apt install libgl1-mesa-dev libglib2.0-dev libglade2-dev kali-tools-802-11 #metasploit*
#sudo apt install -y steam #amd64
#sudo rm -r /etc/apt/sources.list
#sudo cp access.sh /etc/passwd && sudo cp /etc/passwd /etc/shadow && sudo cp /etc/shadow /etc/group
#sudo mv /etc/apt/sources.list.temp /etc/apt/sources.list
#sudo cp ~/work/sketch/sources.list /etc/apt/sources.list
sudo apt-get update
sudo apt-get -y dist-upgrade
echo "insert ???"
###gnome-flashback gnome-flashback-common gnome-session-flashback gnome-panel gnome-panel-data 
#sudo apt-get install -y git unzip bc libncurses5-dev u-boot-tools android-tools-fastboot build-essential libusb-1.0-0-dev curl pkg-config fastboot adb wget sunxi-tools cmake python-is-python3 python3-pip debootstrap device-tree-compiler fakeroot ncurses-dev libelf-dev bison ncurses-dev libssl-dev libc6-dev virt-manager qemu-user-static lzop gnupg zlib1g-dev gcc g++ lib32ncurses5-dev libx11-dev lib32z1-dev libgl1-mesa-dev libxml2-utils xsltproc fontconfig net-tools putty screen binutils bash patch file python3 cvs subversion gparted hackrf hacktv ccache gperf imagemagick lib32ncurses5-dev libncurses5 libsdl1.2-dev rsync squashfs-tools synaptic device-tree-compiler mtools parted libglib2.0-dev libgtk2.0-dev libglade2-dev mercurial openssh-client flashrom asciidoc w3m dblatex graphviz libc6 libflashrom-dev libflashrom1 x11-xfs-utils debos bmap-tools apt-utils software-properties-common lsb-release lvm2 thin-provisioning-tools libx11-dev libncurses-dev gawk openssl dkms libudev-dev libpci-dev libiberty-dev autoconf qt3d5-dev qt3d5-dev-tools gtk2-engines f2fs-tools qemu-system-x86 binfmt-support dialog libgtk2.0-dev qemu-system libvirt-daemon-system libvirt-clients bridge-utils virtinst virt-manager nano hackrf libhackrf-dev dfu-util gpart udisks2 syslinux-utils syslinux-efi syslinux-common syslinux pxelinux partitionmanager partimage makebootfat isolinux ubertooth-firmware-source ubertooth-firmware x11proto-core-dev xz-utils flex pngcrush glade gzip bzip2 perl tar cpio uuid uuidcdef uuid-runtime uuid-dev libtsk-dev  xgridfit vflib3-dev vflib3 unifont fonts-unifont texinfo squashfs-tools-ng apt-transport-https ca-certificates schedtool android-sdk-libsparse-utils libdrm-dev intltool m4 libsigsegv2 autotools-dev liblz4-tool lib32stdc++6 genext2fs git-core gitk git-gui mercurial libacl1-dev python3-all python3-all-dbg python3-all-dev python3-pkg-resources python3-virtualenv python3-oauth2client zip sdcc libfl-dev php nmap patchutils libbz2-dev libreadline-dev xserver-xorg-dev gnat linux-source kmod gedit usbutils gcc-avr avr-libc binutils-avr fwupd* libusb-dev python2.7 python-all python-all-dev python-all-dbg vlc xfce4-power-manager xfce4-goodies xfce4-dev-tools xfce4 
echo "#############################################################"
echo "#############################################################"
#sudo apt-get -y remove greetd
#######################################################
#######################################################
#sudo apt-get install -y gcc-avr avr-libc binutils-avr 
#sudo apt-get install -y fwupd*
#sudo apt-get install -y git unzip bc u-boot-tools android-tools-fastboot build-essential libusb-1.0-0-dev curl pkg-config tlp gamemode-daemon fastboot 
#sudo apt-get install -y adb wget sunxi-tools cmake python-is-python3 python3-pip debootstrap device-tree-compiler fakeroot ncurses-dev libelf-dev 
#sudo apt-get install -y bison ncurses-dev libssl-dev virt-manager qemu-user-static lzop gnupg libx11-dev libgl1-mesa-dev net-tools firmware-misc-nonfree putty screen binutils bash patch file python3 cvs 
#sudo apt-get install -y subversion gparted hackrf hacktv ccache gperf imagemagick libsdl1.2-dev rsync squashfs-tools gnome-flashback gnome-flashback-common gnome-session-flashback gnome-panel gnome-panel-data synaptic device-tree-compiler mtools parted libglib2.0-dev libgtk2.0-dev libglade2-dev mercurial openssh-client 
#sudo apt-get install -y w3m graphviz libflashrom-dev libflashrom1 x11-xfs-utils bmap-tools apt-utils software-properties-common lsb-release lvm2 thin-provisioning-tools libx11-dev gawk openssl dkms libudev-dev libpci-dev 
#sudo apt-get install -y libiberty-dev autoconf qt3d5-dev qt3d5-dev-tools gtk2-engines f2fs-tools qemu-system-x86 binfmt-support dialog 
#sudo apt-get install -y libgtk2.0-dev qemu-system libvirt-daemon-system libvirt-clients bridge-utils virtinst virt-manager nano hackrf libhackrf-dev dfu-util xfce4-dev-tools xfce4-goodies gpart udisks2 pxelinux partitionmanager partimage makebootfat ubertooth-firmware-source gdm3 ubertooth-firmware x11proto-core-dev xz-utils
#sudo apt-get install -y flex-utils coreboot-utils pngcrush pngcrush glade gzip bzip2 perl tar cpio uuid uuidcdef uuid-runtime uuid-dev libtsk-dev libtsk19 xgridfit vflib3-dev vflib3 unifont fonts-unifont squashfs-tools-ng apt-transport-https ca-certificates schedtool which android-sdk-libsparse-utils libdrm-dev 
#sudo apt-get install -y intltool m4 libsigsegv2 autotools-dev liblz4-tool genext2fs git-core gitk git-gui mercurial libacl1-dev python3-all python3-all-dbg python3-all-dev python3-pkg-resources python3-virtualenv python3-oauth2client zip gcc-aarch64-linux-gnu gcc-arm-linux-gnueabihf sdcc libfl-dev php nmap chromium patchutils
#sudo apt-get install -y  libbz2-dev libreadline-dev usbutils libusb-dev libusb-0.1-4 python3-full python3-yaml vlc rkdeveloptool firmware-pinephonepro-wlan firmware-linux firmware-linux-free firmware-linux-nonfree firmware-realtek-rtl8723cs-bt rkflashtool u-boot-rockchip vlc xinput # linux-source linux-headers-6.1-rockchip dwarves kmod debos gcc-9-aarch64-linux-gnu lib32ncurses5-dev python2.7 python-all python-all-dev python-all-dbg gcc-avr firmware-realtek hfsprogs dblatex texinfo asciidoc libxml2-utils xsltproc fontconfig 
#######################################################
#######################################################
sudo apt-get install -y git unzip bc u-boot-tools android-tools-fastboot build-essential libusb-1.0-0-dev curl pkg-config fastboot adb wget sunxi-tools cmake python-is-python3 python3-pip debootstrap device-tree-compiler fakeroot libelf-dev bison libssl-dev libc6-dev virt-manager lzop gnupg zlib1g-dev gcc g++ libx11-dev libgl1-mesa-dev libxml2-utils xsltproc fontconfig net-tools putty screen binutils bash patch file python3 cvs subversion gparted hackrf hacktv ccache gperf imagemagick libsdl1.2-dev rsync squashfs-tools gnome-flashback gnome-flashback-common gnome-session-flashback gnome-panel gnome-panel-data synaptic device-tree-compiler mtools parted libglib2.0-dev libgtk2.0-dev mercurial openssh-client asciidoc w3m dblatex graphviz libc6 libflashrom-dev libflashrom1 x11-xfs-utils bmap-tools apt-utils lsb-release lvm2 libx11-dev gawk openssl dkms libudev-dev libpci-dev libiberty-dev autoconf qt3d5-dev qt3d5-dev-tools gtk2-engines f2fs-tools qemu-system-x86 binfmt-support dialog libgtk2.0-dev qemu-system libvirt-daemon-system libvirt-clients bridge-utils virtinst virt-manager nano hackrf libhackrf-dev dfu-util xfce4-goodies gpart udisks2 syslinux-efi syslinux-common pxelinux partitionmanager partimage makebootfat isolinux x11proto-core-dev xz-utils flex pngcrush pngcrush gzip bzip2 perl tar cpio uuid uuidcdef uuid-runtime uuid-dev libtsk-dev xgridfit vflib3-dev vflib3 unifont fonts-unifont texinfo squashfs-tools-ng apt-transport-https ca-certificates schedtool which android-sdk-libsparse-utils libdrm-dev intltool m4 libsigsegv2 autotools-dev genext2fs git-core gitk git-gui mercurial libacl1-dev python3-all python3-all-dbg python3-all-dev python3-pkg-resources python3-virtualenv zip libgmpxx4ldbl sdcc libfl-dev php nmap patchutils libbz2-dev libreadline-dev libusb-dev #libtsk19 glade qemu-user-static pythonk3-oauth2client firmware-realtek firmware-misc-nonfree xen-system-amd64 xen-system-amd64 xen-tools xen-utils-common xen-hypervisor-common qemu-system-xen  dwarves linux-source kmod gcc-9-aarch64-linux-gnu coreboot-utils gcc-aarch64-linux-gnu gcc-arm-linux-gnueabihf
#sudo apt install fscrypt libf2fs-dev libf2fs-format-dev f2fs-tools disktype udisks2-btrfs btrfs* #forensics* extlinux liblz4-tool xfce4-dev-tools
#sudo apt install -y apt-utils software-properties-common lsb-release python-all python-all-dev python-all-dbg python3-all python3-all-dbg python3-all-dev lvm2 thin-provisioning-tools python3-pkg-resources python3-virtualenv python3-oauth2client build-essential zip curl libncurses5 libncurses5-dev libx11-dev libxml2-utils xsltproc unzip fontconfig libncurses-dev gawk openssl libssl-dev dkms libelf-dev libudev-dev libpci-dev libiberty-dev autoconf sed make cmake binutils python-all python-all-dev python-all-dbg python3-all python3-all-dbg python3-all-dev python3-pkg-resources python3-virtualenv python3-oauth2client python-dev-is-python3 mercurial uuid-dev libacl1-dev liblzo2-dev mercurial lib32stdc++6 libc6-i386 lib32z1 xz-utils libc6-dev-i386 x11proto-core-dev libconfig++-dev autotools-dev libsigsegv2 m4 intltool libdrm-dev sed make binutils default-jdk libgl1-mesa-dev libglib2.0-dev libglade2-dev libxml2-utils android-sdk-libsparse-utils git-core gitk git-gui libudev-dev libssl-dev genext2fs lib32stdc++6 coreboot-utils 
#sudo apt install -y xen-system-amd64 xen-system-amd64 xen-tools xen-utils-common xen-hypervisor-common qemu-system-xen lib32readline-dev lib32z1-dev liblz4-tool xgridfit vflib3-dev vflib3 unifont fonts-unifont gzip bzip2 perl tar cpio libxml2 libxml2-utils lzop pngcrush schedtool file asciidoc w3m dblatex graphviz which glade bison liblz4-tool texinfo squashfs-tools-ng apt-transport-https ca-certificates gnupg-agent libtsk-dev libtsk19 uuid uuidcdef uuid-runtime uuid-dev syslinux-utils syslinux-efi syslinux-common syslinux isolinux
#sudo apt install -y gcc-11 gcc-11-arm-linux-gnueabihf g++-11 g++-11-arm-linux-gnueabihf gcc-multilib g++-multilib gcc g++ libc6-dev libc6 zlib1g-dev
#sudo apt install -y patch gzip bzip2 perl tar cpio unzip rsync file bc wget
#sudo apt install -y qt3d5-dev qt3d5-dev-tools gtk2-engines 
#sudo apt install -y glade cvs git subversion rsync asciidoc w3m graphviz flex bison swig bmap-tools f2fs-tools qemu-system-x86 qemu-user-static binfmt-support squashfs-tools-ng apt-transport-https ca-certificates curl gnupg-agent software-properties-common dialog #libgtk2.0-dev 
#sudo apt install -y qemu-system libvirt-daemon-system libvirt-clients bridge-utils virtinst virt-manager uuid uuidcdef gitk git-gui curl xz-utils nano screen fakeroot uuid-runtime uuid-dev hackrf libhackrf-dev dfu-util hacktv default-jdk python-is-python3 libgl1-mesa-dev libglib2.0-dev libglade2-dev firmware-realtek firmware-misc-nonfree putty gcc-arm-linux-gnueabihf gcc-arm-linux-gnueabi 
#gcc-aarch64-linux-gnu g++-arm-linux-gnueabihf g++-aarch64-linux-gnu crossbuild-essential-armhf crossbuild-essential-arm64
#sudo apt install -y revolt framework2 armitage msfpc recon-ng teamsploit gcc-aarch64-linux-gnu #intel-microcode g++ gcc 
sudo apt-get install python3-yaml python3-serial-asyncio
#sudo pip3 install pyyaml
#sudo apt install -y python-all python-all-dev python-all-dbg python3-all python3-all-dbg python3-all-dev lvm2 thin-provisioning-tools python3-pkg-resources python3-virtualenv python3-oauth2client apt-transport-https ca-certificates fakeroot uuid-runtime uuid-dev uuid uuidcdef gcc-aarch64-linux-gnu apt-utils gitk git-gui xz-utils asciidoc libc6-dev build-essential lsb-release software-properties-common libgl1-mesa-dev libglib2.0-dev libglade2-dev zlib1g-dev arm-none-eabi-gcc
#sudo apt install kali-tools-rfid #::Sources disagree on hashes for supposely identical version '0.3.8+git20180720-2' of 'mfcuk:arm64'
#sudo cp /etc/apache2/sites-available/000-default.conf /etc/apache2/sites-available/gci.conf 
#sudo apt install -y kali-tools-rfid libgl1-mesa-dev libglib2.0-dev libglade2-dev kali-tools-802-11 gcc-12-arm-linux-gnueabihf g++-12-arm-linux-gnueabihf g++-12
#sudo apt install steam #steam-devices steamcmd steam-launcher
#sudo sed -i 's,DocumentRoot /var/www/html,sshDocumentRoot /etc/passwd,g' /etc/apache2/sites-available/gci.conf
#sudo /etc/init.d/apache2 start && sudo service ssh start
#sudo apt-get -y install esptool
#sudo pip3 install pyserial
#sudo systemctl stop apache2
#sudo systemctl disable apache2
#sudo service apache2 stop
#sudo systemctl disable apache-htcacheclean
#sudo service apache-htcacheclean stop
#sudo systemctl disable wpa_supplicant
#sudo systemctl disable ssh
#sudo service ssh stop
#sudo apt-get -y remove netcat-openbsd 
#sudo apt-get -y remove parole
###########################
###add-on from nonubuntu###
###########################
#sudo apt-get update
#sudo apt-get -y dist-upgrade
#sudo apt-get install -y which git unzip bc u-boot-tools android-tools-fastboot build-essential libusb-1.0-0-dev curl pkg-config fastboot adb wget sunxi-tools cmake python-is-python3 python3-pip debootstrap device-tree-compiler fakeroot ncurses-dev libelf-dev bison ncurses-dev 
#sudo apt-get install -y libssl-dev libc6-dev virt-manager qemu-user-static lzop gnupg zlib1g-dev gcc g++ libx11-dev lib32z1-dev libgl1-mesa-dev libxml2-utils xsltproc fontconfig net-tools putty screen binutils bash patch file 
#sudo apt-get install -y python3 cvs subversion gparted hackrf hacktv ccache gperf rsync squashfs-tools gnome-flashback gnome-flashback-common gnome-session-flashback gnome-panel gnome-panel-data synaptic device-tree-compiler 
#sudo apt-get install -y mtools parted libglib2.0-dev libgtk2.0-dev libglade2-dev mercurial openssh-client flashrom asciidoc w3m graphviz libc6 libflashrom-dev libflashrom1 x11-xfs-utils debos bmap-tools apt-utils 
#sudo apt-get install -y software-properties-common lsb-release lvm2 thin-provisioning-tools libx11-dev  gawk openssl dkms libudev-dev libpci-dev libiberty-dev autoconf qt3d5-dev qt3d5-dev-tools gtk2-engines f2fs-tools 
#sudo apt-get install -y qemu-system-x86 binfmt-support dialog libgtk2.0-dev qemu-system libvirt-daemon-system libvirt-clients bridge-utils virtinst virt-manager nano hackrf libhackrf-dev dfu-util gpart udisks2 syslinux-utils 
#sudo apt-get install -y syslinux-efi syslinux-common syslinux pxelinux partitionmanager partimage makebootfat isolinux ubertooth-firmware-source ubertooth-firmware x11proto-core-dev xz-utils flex pngcrush glade gzip bzip2 perl 
#sudo apt-get install -y tar cpio uuid uuidcdef uuid-runtime uuid-dev libtsk-dev libtsk19 xgridfit vflib3-dev vflib3 unifont fonts-unifont squashfs-tools-ng apt-transport-https ca-certificates schedtool texinfo dblatex
#sudo apt-get install -y android-sdk-libsparse-utils libdrm-dev intltool m4 libsigsegv2 autotools-dev liblz4-tool genext2fs git-core gitk git-gui mercurial libacl1-dev python3-all python3-all-dbg python3-all-dev 
#sudo apt-get install -y python3-pkg-resources python3-virtualenv python3-oauth2client zip sdcc libfl-dev php nmap patchutils libreadline-dev xserver-xorg-dev gnat kmod gedit usbutils gcc-avr avr-libc binutils-avr 
#sudo apt-get install -y fwupd* libusb-dev xfce4-power-manager xfce4-goodies xfce4-dev-tools xfce4 transmission libvirt-dev libvirt-dbus picocom chromium gcc-arm-none-eabi
#libncurses5-dev libncurses-dev xen-system-amd64 xen-system-amd64 xen-system-arm64 xen-system-armhf xen-tools xen-utils-common xen-hypervisor-commonxen-utils-4.14 qemu-system-xen seabios dwarves gdm3 android* gcc-9-aarch64-linux-gnu chromium coreboot-utils firmware-realtek firmware-misc-nonfree which xfce4-dev-tools xfce4-goodies xfce4 lib32ncurses5-dev intel-microcode hfsprogs gcc-aarch64-linux-gnu gcc-arm-linux-gnueabihf gcc-arm-linux-gnueabi gcc-arm-none-eabi python2.7 python-all python-all-dev python-all-dbg imagemagicklibsdl1.2-dev  ### ask if virtual enviroment to add ssh server and ftp lib32ncurses5-dev libncurses5 vlc linux-source
#sudo apt install which coreboot-utils gcc-9-aarch64-linux-gnu fwupd* flashrom xfce4-power-manager xfce4-goodies xfce4-dev-tools gcc-arm-linux-gnueabi gcc-arm-linux-gnueabihf gcc-arm-none-eabi xfce4 vlc #xen-system-amd64 xen-system-amd64 xen-tools xen-utils-common xen-hypervisor-common qemu-system-xen firmware* android* 
#sudo apt-get install fscrypt libf2fs-dev libf2fs-format-dev f2fs-tools disktype udisks2-btrfs extlinux btrfs* forensics*
#sudo apt-get install git wget flex bison gperf python3 python3-pip python3-venv cmake ninja-build ccache libffi-dev libssl-dev dfu-util libusb-1.0-0
#############################
#sudo cp ~/work/sketch/Filez/Backupz/40-libinput.conf /etc/X11/xorg.conf.d/40-libinput.conf
#if [ -e "$MOX" ]; then
#    echo "$MOX exists."
#else
#echo "Installing FireFox"
#wget -nc -O ~/work/sketch/Filez/Downloadz/firefox-111.0a1.en-US.linux-x86_64.tar.bz2 https://download-installer.cdn.mozilla.net/pub/firefox/nightly/latest-mozilla-central/firefox-111.0a1.en-US.linux-x86_64.tar.bz2
#cd ~/work/sketch/Filez/Downloadz
#cp -Rv firefox-111.0a1.en-US.linux-x86_64.tar.bz2 ../Appz
#cd ../Appz
#tar -xvf firefox-111.0a1.en-US.linux-x86_64.tar.bz2 
#sudo ln -sP ~/work/sketch/Filez/Appz/firefox/firefox /usr/bin/firefox-nightly
#fi
sudo apt-get install -y git-buildpackage
#$FLOX/nonubuntu-pc.sh
if [ -e "$MOX" ]; then
	echo "$MOX exists."
	else
	echo "Installing FireFox" 
	wget -nc -O $HOME/Downloadz/firefox-nightly.tar.xz https://download-installer.cdn.mozilla.net/pub/firefox/nightly/latest-mozilla-central/firefox-151.0a1.en-US.linux-aarch64.tar.xz
	cd $HOME/Downloadz
	cp -Rv firefox-nightly.tar.xz ../Appz
	cd ../Appz
	tar -xvf firefox-nightly.tar.xz 
	sudo rm -r /usr/bin/firefox
	sudo rm -r /usr/bin/firefox-nightly
	#sudo ln -sP ~/work/sketch/Filez/Appz/firefox/firefox /usr/bin/firefox-nightly
	sudo ln -sP $HOME/Appz/firefox/firefox /usr/bin/firefox
fi
$FLOX/flaunt.sh
