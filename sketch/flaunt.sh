#!/bin/bash

hop=$HOME/esp
MONK=$HOME/work/sketch
MOX=$HOME/work/sketch/Filez/Appz/firefox

    if [  -f "/etc/redhat-release" ];then
    	hostnamectl
        hooch=redhat 
    elif [ -f "/etc/lsb-release" ];then
        hostnamectl
        hooch=ubuntu
    elif [ -f "/etc/debian_version" ];then
        hostnamectl
        hooch=debian
    else
        echo "Unknown operating system"
        exit
    fi

sudo apt-get -y install python3-yaml python3-serial-asyncio esptool vlc
#sudo apt-get -y install xrdp
sudo systemctl stop apache2
sudo systemctl disable apache2
sudo service apache2 stop
sudo systemctl disable apache-htcacheclean
sudo service apache-htcacheclean stop
#sudo systemctl disable wpa_supplicant
#sudo systemctl disable xrdp
#sudo systemctl stop xrdp
#sudo service xrdp stop
#sudo systemctl disable ssh
#sudo service ssh stop
#sudo apt-get -y remove gcc-arm-none-eabi
#sudo apt-get -y remove netcat-openbsd #gcc-arm-none-eabi
###ask if ubuntu Server
sudo apt-get -y install xfce4*
#sudo apt-get -y install xfce4 xfce4-goodies
sudo apt-get -y install gdm3 
#sudo apt-get -y install xfce4-terminal
#sudo apt-get -y install xfce4-screensaver
sudo apt-get -y install xscreensaver
#sudo apt-get -y install chromium-browser
sudo apt-get -y install aptitude
#sudo apt-get -y remove parole
sudo apt-get -y install vlc
sudo apt-get -y install xine-ui
sudo apt-get -y install xine-console
sudo apt-get -y install gedit
sudo apt-get -y install mousepad
#sudo apt-get -y remove firefox-esr
#sudo apt-get -y remove firefox
#sudo snap remove firefox
#sudo rm -r ~/esp
mkdir -p ~/esp
cd ~/esp
sudo apt-get -y install git
echo "esp-IDF Installer"
if [ -e "$hop" ]; then
    echo "$hop exists."
else
    echo "$hop does not exist."
   	git clone --recursive https://github.com/espressif/esp-idf.git
	cd $HOME/esp/esp-idf
	./install.sh esp32,esp32s2,esp32c6
	python3 $HOME/esp/esp-idf/tools/idf_tools.py install
	. $HOME/esp/esp-idf/export.sh

if [ $hooch = 'debian' ]; then
		sed -i -e '$aPATH="$HOME/esp/esp-idf:$PATH"' ~/.profile
		sed -i -e '$aPATH="$HOME/esp/esp-idf/tools:$PATH"' ~/.profile
		source ~/.profile
        	else
        		if [ $hooch = 'ubuntu' ]; then
        			sed -i -e '$aPATH="$HOME/esp/esp-idf:$PATH"' ~/.bashrc
				sed -i -e '$aPATH="$HOME/esp/esp-idf/tools:$PATH"' ~/.bashrc
				source ~/.bashrc
		fi
	fi
fi

if [ -e "$MOX" ]; then
	echo "$MOX exists."
	else
	echo "Installing FireFox" 
	wget -nc -O $HOME/Downloadz/firefox-nightly.tar.xz https://download-installer.cdn.mozilla.net/pub/firefox/nightly/latest-mozilla-central/firefox-152.0a1.en-US.linux-x86_64.tar.xz
	cd $HOME/Downloadz
	cp -Rv firefox-nightly.tar.xz ../Appz
	cd ../Appz
	tar -xvf firefox-nightly.tar.xz 
	sudo rm -r /usr/bin/firefox
sudo rm -r /usr/bin/firefox-nightly
	sudo ln -sP ~/work/sketch/Filez/Appz/firefox/firefox /usr/bin/firefox-nightly
	sudo ln -sP $HOME/Appz/firefox/firefox /usr/bin/firefox
fi
#sudo apt-get -y install gnome*
#sudo apt-get -y install plasma*
sudo apt-get -y install bc bison build-essential ccache curl flex g++-multilib gcc-multilib git git-lfs gnupg gperf 
sudo apt-get -y install imagemagick lib32readline-dev lib32z1-dev libelf-dev liblz4-tool libsdl1.2-dev libssl-dev 
sudo apt-get -y install libxml2 libxml2-utils lzop pngcrush rsync schedtool squashfs-tools xsltproc zip zlib1g-dev 
#sudo apt-get -y install cmdtest
sudo apt-get -y install network-manager* modemmanager-dev
sudo apt-get -y install bluez* bluetooth bluemon blueman 
sudo apt-get -y install asterisk-mobile bettercap ayatana-indicator-bluetooth 
sudo apt-get -y install nestopia pcsxr retroarch-dev retroarch* libretro* 
sudo apt-get -y install zsnes
#sudo apt-get -y remove tex-common
#sudo apt -y remove texinfo
#sudo rm -r $MONK/Filez/Downloadz/*
sudo apt-get -y install repo
sudo apt-get -y install recon-ng
sudo apt-get -y install metasploit*
#sudo apt-get -y install mate
#sudo apt-get -y install cinnamon
sudo apt-get -y install gcc-aarch64-linux-gnu 
sudo apt-get -y install gcc-riscv64-linux-gnu
#sudo apt-get -y install gcc-riscv64-13-linux-gnu
sudo apt-get -y install armitage
#sudo apt-get -y remove xdg-desktop-portal
sudo apt-get -y install fuse3
#sudo apt-get -y install arduino
#sudo apt-get -y install fio
sudo apt-get -y install meson
sudo apt-get -y gawk wget git diffstat unzip texinfo gcc build-essential chrpath socat cpio python3 
sudo apt-get -y python3-pip python3-pexpect xz-utils debianutils iputils-ping python3-git python3-jinja2 
sudo apt-get -y libegl1-mesa libsdl1.2-dev pylint xterm python3-subunit mesa-common-dev zstd liblz4-tool
#sudo rm -r /lib/systemd/system/rescue.target.wants
sudo apt-get -y install python3-distutils
sudo apt-get -y install weston*
sudo apt-get -y install hypr*
sudo apt-get -y install *hyprland*
sudo apt-get -y install debian-goodies
sudo apt install -y cmake libusb-1.0-0-dev make gcc g++ libbluetooth-dev wget pkg-config python3-numpy python3-qtpy python3-setuptools
sudo apt -y autoremove
sudo cp -Rv $MONK/hi /usr/bin/hi 
mkdir -p $HOME/sourceCode/arm
sudo apt-get -y install linux-headers-$(uname -r)
sudo apt-get -y install rust-all
#sed -i -e '$aPATH="$HOME/sourceCode/arm/ox64/buildroot/output/host/bin:$PATH"' ~/.profile

