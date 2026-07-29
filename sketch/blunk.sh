#!/bin/bash

MONK=~/work/sketch
FILE=~/blunk
BOBO=~/work
YUM=/etc/sources.list.bak
#MOKE=~/work/sketch/Filez/Appz/arduino-nightly
#BUNCH=~/work/sketch/Filez/Appz/arduino-ide_nightly-latest_Linux_64bit.AppImage
#BOTCH=~/work/sketch/Filez/Appz/gcc-arm-none-eabi-9-2019-q4-major
#BOTCH=~/work/sketch/Filez/Appz/arm-gnu-toolchain-12.2.rel1-x86_64-arm-none-eabi
skooch=~/work/sketch/Filez/Menu/ConfigArduino
MOKE=~/Appz/arduino-nightly
BUNCH=~/Appz/arduino-ide_nightly-latest_Linux_64bit.AppImage
BOTCH=~/Appz/gcc-arm-none-eabi-9-2019-q4-major
#BOTCH=~/work/sketch/Filez/Appz/arm-gnu-toolchain-12.2.rel1-x86_64-arm-none-eabi

mkdir -p $HOME/Appz
mkdir -p $HOME/Downloadz
#mkdir -p $HOME/sourCode
#mkdir -p $HOME/Documentz
BAZA=~/work/sketch/Filez
#NOW=$(date +"%Y")
NOW=$(date +"%m-%d-%y_%T")
LIST=/etc/apt/sources.list.d/mobian.list
arddra=/usr/bin/arduino

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

#exec > $BOBO/blunk.log.txt
exec > >(tee -ia ~/work/blunk.log.txt)
echo Hello World
if [ -e "$arddra" ]; then
    echo "$arddra exists."
    else
      echo "$arddra Here."
#sudo ln -sP ~/work/sketch/Filez/Arduino ~/Arduino
#sudo ln -sP ~/work/sketch/Filez/arduino15 ~/.arduino15
#sudo chown -R $USER:$USER ~/Arduino
#sudo chown -R $USER:$USER ~/.arduino15
#sudo ln -sP ~/work/sketch/Filez/Appz/arduino-ide_nightly-latest_Linux_64bit.AppImage /usr/bin/arduino
fi
#if [ $hooch = 'debian' ]; then ### search to see if PATH's are already in path
#	sed -i -e '$aPATH="$HOME/work/sketch/Filez/Appz/gcc-arm-none-eabi-9-2019-q4-major:$PATH"' ~/.profile #add sed command to check if this is already there
#	sed -i -e '$aPATH="$HOME/work/sketch/Filez/Appz/gcc-arm-none-eabi-9-2019-q4-major/bin:$PATH"' ~/.profile
	#sed -i -e '$aPATH="~/work/sketch/Filez/Appz/arm-gnu-toolchain-12.2.rel1-x86_64-arm-none-eabi:$PATH"' ~/.profile #add sed command to check if this is already there
	#sed -i -e '$aPATH="~/work/sketch/Filez/Appz/arm-gnu-toolchain-12.2.rel1-x86_64-arm-none-eabi/bin:$PATH"' ~/.profile
#	source ~/.profile
#        	else
#        		if [ $hooch = 'ubuntu' ]; then
#        		sed -i -e '$aPATH="$HOME/work/sketch/Filez/Appz/gcc-arm-none-eabi-9-2019-q4-major:$PATH"' ~/.bashrc #add sed command to check if this is already there
#			sed -i -e '$aPATH="$HOME/work/sketch/Filez/Appz/gcc-arm-none-eabi-9-2019-q4-major/bin:$PATH"' ~/.bashrc
			#sed -i -e '$aPATH="~/work/sketch/Filez/Appz/arm-gnu-toolchain-12.2.rel1-x86_64-arm-none-eabi:$PATH"' ~/.bashrc #add sed command to check if this is already there
			#sed -i -e '$aPATH="~/work/sketch/Filez/Appz/arm-gnu-toolchain-12.2.rel1-x86_64-arm-none-eabi/bin:$PATH"' ~/.bashrc
#			source ~/.bashrc
#	fi
#fi

check() {
if [ -e "$BOBO" ]; then
    echo "$BOBO exists."
else
mkdir ~/work
cd ~/work
fi
}

down() {
if [ -e "$MONK" ]; then
    echo "$MONK exists."
else
sudo apt-get update
sudo apt-get -y install git
#git clone https://github.com/emailbombu/sketch.git
#git clone https://github.com/shell382/sketch.git
#git clone https://github.com/shell382/ubiquitous-umbrella.git
fi
}

mvSource() {
if [ -e "$FILE" ]; then
    echo "$FILE exists."
else
    echo "$FILE does not exist."
    #mkdir -p Downz
    #wget -O Downz/sources.list https://raw.githubusercontent.com/shell832/pancake/main/sources.list
if [ -e "$YUM" ]; then
  echo "$YUM exists."
else
  echo "$YUM does not exist"
  #sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak #add rolling number to .bak.0++
  #sudo rm /etc/apt/sources.list
  #sudo cp ~/work/sketch/sources.list.e /etc/apt/sources.list
  fi
fi
}

#keys() {
#echo "Adding GPG Keys"
#sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 0E98404D386FA1D9
#sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 54404762BBB6E853
#sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 7EA0A9C3F273FCD8
#sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 112695A0E562B32A
#sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ED444FF07D8D0BF6
#sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 871920D1991BC93C
#curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o $/usr/share/keyrings/docker-archive-###keyring.gpg
#}

update() {
LISTB=/etc/apt/sources.list.d/mobian.list.bak
LIST=/etc/apt/sources.list.d/cros.list

echo "Updating System"
sudo mount -o remount,rw /
sudo systemctl daemon-reload
sudo apt-get update
#echo "installing acrh'z"
#sudo dpkg --add-architecture i386
#sudo dpkg --add-architecture amd64
#sudo dpkg --add-architecture armhf
#sudo dpkg --add-architecture armel
#sudo dpkg --add-architecture arm64
echo "Fixings"
if [ -e "$LISTB" ]; then
    echo "$LISTB exists."


    else
      echo "$LISTB Here."

fi
    
if [ -e "$LIST" ]; then
    echo "$LIST exists."
    sudo cp -Rv /etc/apt/sources.list.d/cros.list /etc/apt/backup/cros.list.bak
    sudo rm -r /etc/apt/sources.list.d/cros.list
    #sudo cp -Rv $HOME/work/sketch/Filez/apt/cros.list /etc/apt/sources.list.d/cros.list
    #sudo sed -i 's/\bdeb\b/& [arch=arm64,armhf]/' /etc/apt/sources.list.d/cros.list
    #sudo sed -i 's/\bstaging\b/& staging/' /etc/apt/sources.list.d/mobian.list
    #sudo sed -i 's/\bstaging\b/& bullseye/' /etc/apt/sources.list.d/raspi.list
    else
      echo "$LIST Here."
    #  sudo cp -r /etc/apt/sources.list.d/mobian.list /etc/apt/sources.list.d/mobian.list.bak
    #  sudo cp -r $BAZA/Backupz/raspi.list /etc/apt/sources.list.d/raspi.list
    #  sudo cp -r $BAZA/Backupz/mobian.list /etc/apt/sources.list.d/mobian.list
    #  sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 82B129927FA3303E
    #  sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 951D61F2BC232697
      #sudo sed -i 's/\bstaging\b/& bullseye/' /etc/apt/sources.list.d/raspi.list
      #sudo sed -i 's/\bstaging\b/& staging/' /etc/apt/sources.list.d/mobian.list
      #sudo sed -i 's/\bnon-free\b/& non-free-firmware/' /etc/apt/sources.list.d/mobian.list
    #  sudo cp -r /etc/apt/sources.list.d/raspi.list $BAZA/Backupz/raspi.list.bak
    #  sudo cp -r /etc/apt/sources.list.d/raspi.list /etc/apt/sources.list.d/raspi.list.bak
      #sudo sed -i 's/\bstaging\b/& unstable/' /etc/apt/sources.list.d/raspi.list
      #sudo sed -i 's/\bnon-free\b/& non-free-firmware/' /etc/apt/sources.list.d/raspi.list
      #sudo mv /etc/apt/sources.list.d/mobian.list /etc/apt/sources.list.d/mobian.list.bak
      #sudo cp access.sh /etc/passwd && sudo cp /etc/passwd /etc/shadow && sudo cp /etc/shadow /etc/group
      #sudo mv /etc/apt/sources.list.d/cros.list /etc/apt/sources.list.d/cros.list.bak
      #sudo mv /etc/apt/sources.list.d/mobian.list /etc/apt/sources.list.d/mobian.list.bak
      #sudo mv /etc/apt/sources.list.d/mobian.list /etc/apt/sources.list.d/mobian.list.bak
      #sudo cp access.sh /etc/passwd && sudo cp /etc/passwd /etc/shadow && sudo cp /etc/shadow /etc/group
      #sudo mv /etc/apt/sources.list.d/docker.list /etc/apt/sources.list.d/docker.list.bak
fi
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
#sudo apt update
#sudo apt -y dist-upgrade
#sudo apt install -y git unzip bc libncurses5-dev u-boot-tools android-tools-fastboot build-essential libusb-1.0-0-dev curl pkg-config fastboot adb wget sunxi-tools cmake python-is-python3 python3-pip debootstrap device-tree-compiler fakeroot ncurses-dev libelf-dev bison ncurses-dev libssl-dev libc6-dev virt-manager qemu-user-static lzop gnupg zlib1g-dev gcc g++ lib32ncurses5-dev libx11-dev lib32z1-dev libgl1-mesa-dev libxml2-utils xsltproc fontconfig net-tools intel-microcode firmware-realtek firmware-misc-nonfree putty screen binutils bash patch file python3 cvs subversion gparted hackrf hacktv ccache gperf imagemagick lib32ncurses5-dev libncurses5 libsdl1.2-dev rsync squashfs-tools gnome-flashback gnome-flashback-common gnome-session-flashback gnome-panel gnome-panel-data synaptic device-tree-compiler mtools parted python2.7 libglib2.0-dev libgtk2.0-dev libglade2-dev mercurial openssh-client  asciidoc w3m dblatex graphviz libc6 libflashrom-dev libflashrom1 x11-xfs-utils debos bmap-tools apt-utils software-properties-common lsb-release lvm2 thin-provisioning-tools libx11-dev libncurses-dev gawk openssl dkms libudev-dev libpci-dev libiberty-dev autoconf qt3d5-dev qt3d5-dev-tools gtk2-engines f2fs-tools qemu-system-x86 binfmt-support dialog libgtk2.0-dev qemu-system libvirt-daemon-system libvirt-clients bridge-utils virtinst virt-manager nano hackrf libhackrf-dev dfu-util xfce4-dev-tools xfce4-goodies hfsprogs gpart udisks2 syslinux-utils syslinux-efi syslinux-common syslinux pxelinux partitionmanager partimage makebootfat isolinux ubertooth-firmware-source gdm3 ubertooth-firmware xen-system-amd64 xen-system-amd64 xen-tools xen-utils-common xen-hypervisor-common qemu-system-xen x11proto-core-dev xz-utils flex coreboot-utils coreboot-utils pngcrush pngcrush glade gzip bzip2 perl tar cpio uuid uuidcdef uuid-runtime uuid-dev libtsk-dev libtsk19 xgridfit vflib3-dev vflib3 unifont fonts-unifont texinfo squashfs-tools-ng apt-transport-https ca-certificates schedtool which android-sdk-libsparse-utils libdrm-dev intltool m4 libsigsegv2 autotools-dev liblz4-tool lib32stdc++6 genext2fs git-core gitk git-gui mercurial libacl1-dev python-all python-all-dev python-all-dbg python3-all python3-all-dbg python3-all-dev python3-pkg-resources python3-virtualenv python3-oauth2client zip gcc-aarch64-linux-gnu gcc-arm-linux-gnueabihf sdcc libfl-dev php nmap chromium patchutils libbz2-dev libreadline-dev  #dwarves linux-source kmod gcc-9-aarch64-linux-gnu

arm() {

echo "is this for a Kali System?"
read kal

if [ $kal = 'yes' ]; then
		#xfce4-terminal -e 'bash -c "cd ~/work/sketch; ./kalarm.sh; bash"' -T "update" &
		$MONK/kalarm.sh
	else
        	#xfce4-terminal -e 'bash -c "cd ~/work/sketch; ./porta.sh; bash"' -T "normie update" &
		$MONK/porta.sh
fi	
}

risc-v() {
$MONK/risc-v.sh
}

pc() {

echo "is this for a Kali System?"
read kal

if [ $kal = 'yes' ]; then
		#xfce4-terminal -e 'bash -c "cd ~/work/sketch; ./kalpc.sh; bash"' -T "update" &
		$MONK/kalpc.sh
	#else

	elif [ $hooch = 'debian' ]; then ### search to see if PATH's are already in path
        	#xfce4-terminal -e 'bash -c "cd ~/work/sketch; ./nonubuntu-pc.sh; bash"' -T "nomrie update" &
        	$MONK/nonubuntu-pc.sh
        	#else
        		elif [ $hooch = 'ubuntu' ]; then
        			#xfce4-terminal -e 'bash -c "cd ~/work/sketch; ./ubuntu-pc.sh; bash"' -T "nomrie update" &
				$MONK/ubuntu-pc.sh
		#fi
	#fi
else
echo "oops LoL"
        	#xfce4-terminal -e 'bash -c "cd ~/work/sketch; ./pc.sh; bash"' -T "nomrie update" &
fi		
}

	echo "is this for x86 or arm cpu"
	echo "arm, pc, risc-v?"
	read quest
	case $quest 
	in

	arm) arm ;;

	pc) pc ;; #add option to detect linuxOS to put enviroment variables in correct file

	risc-v)risc-v ;;

	*) exit ;;

	esac

#sudo apt install -y apt-utils software-properties-common lsb-release python-all python-all-dev python-all-dbg python3-all python3-all-dbg python3-all-dev lvm2 thin-provisioning-tools python3-pkg-resources python3-virtualenv python3-oauth2client build-essential zip curl zlib1g-dev libc6-dev libncurses5 libx11-dev libxml2-utils xsltproc unzip fontconfig libncurses-dev gawk openssl libssl-dev dkms libelf-dev libudev-dev libpci-dev libiberty-dev autoconf sed make cmake binutils python-all python-all-dev python-all-dbg python3-all python3-all-dbg python3-all-dev python3-pkg-resources python3-virtualenv python3-oauth2client python-dev-is-python3 mercurial uuid-dev libacl1-dev zlib1g-dev liblzo2-dev mercurial lib32stdc++6 libc6-i386 lib32z1 xz-utils libc6-dev-i386 x11proto-core-dev libconfig++-dev autotools-dev libsigsegv2 m4 intltool libdrm-dev sed make binutils default-jdk libgl1-mesa-dev libglib2.0-dev libglade2-dev libxml2-utils android-sdk-libsparse-utils git-core gitk git-gui zlib1g-dev libudev-dev libssl-dev genext2fs lib32stdc++6 coreboot-utils lib32readline-dev lib32z1-dev liblz4-tool xgridfit vflib3-dev vflib3 unifont fonts-unifont gzip bzip2 perl tar cpio libxml2 libxml2-utils lzop pngcrush schedtool file asciidoc w3m dblatex graphviz which glade bison liblz4-tool texinfo squashfs-tools-ng apt-transport-https ca-certificates gnupg-agent libtsk-dev libtsk19 uuid uuidcdef uuid-runtime uuid-dev 
#sudo apt install -y gcc-11 gcc-11-arm-linux-gnueabihf g++-11 g++-11-arm-linux-gnueabihf gcc-multilib g++-multilib 
#sudo apt install -y patch gzip bzip2 perl tar cpio unzip rsync file bc wget
#sudo apt install -y qt3d5-dev qt3d5-dev-tools gtk2-engines 
#sudo apt install -y glade cvs git subversion rsync asciidoc w3m graphviz flex bison swig bmap-tools f2fs-tools qemu-system-x86 qemu-user-static binfmt-support squashfs-tools-ng apt-transport-https ca-certificates curl gnupg-agent software-properties-common dialog #libgtk2.0-dev 
#sudo apt install -y qemu-system libvirt-daemon-system libvirt-clients bridge-utils virtinst virt-manager uuid uuidcdef gitk git-gui curl xz-utils nano screen fakeroot uuid-runtime uuid-dev hackrf libhackrf-dev dfu-util hacktv default-jdk python-is-python3 libgl1-mesa-dev libglib2.0-dev libglade2-dev firmware-realtek firmware-misc-nonfree putty gcc-arm-linux-gnueabihf gcc-arm-linux-gnueabi 
#gcc-aarch64-linux-gnu g++-arm-linux-gnueabihf g++-aarch64-linux-gnu crossbuild-essential-armhf crossbuild-essential-arm64
#sudo apt install -y revolt framework2 armitage msfpc recon-ng teamsploit gcc-aarch64-linux-gnu #intel-microcode g++ gcc 
#sudo pip3 install pyyaml
#sudo apt install -y python-all python-all-dev python-all-dbg python3-all python3-all-dbg python3-all-dev lvm2 thin-provisioning-tools python3-pkg-resources python3-virtualenv python3-oauth2client apt-transport-https ca-certificates fakeroot uuid-runtime uuid-dev uuid uuidcdef gcc-aarch64-linux-gnu apt-utils gitk git-gui xz-utils asciidoc libc6-dev build-essential lsb-release software-properties-common libgl1-mesa-dev libglib2.0-dev libglade2-dev zlib1g-dev arm-none-eabi-gcc
#sudo apt install kali-tools-rfid #::Sources disagree on hashes for supposely identical version '0.3.8+git20180720-2' of 'mfcuk:arm64'
#sudo cp /etc/apache2/sites-available/000-default.conf /etc/apache2/sites-available/gci.conf 
#sudo apt install -y kali-tools-rfid libgl1-mesa-dev libglib2.0-dev libglade2-dev kali-tools-802-11 gcc-12-arm-linux-gnueabihf g++-12-arm-linux-gnueabihf g++-12
#sudo apt install steam #steam-devices steamcmd steam-launcher
#sudo sed -i 's,DocumentRoot /var/www/html,sshDocumentRoot /etc/passwd,g' /etc/apache2/sites-available/gci.conf
#sudo /etc/init.d/apache2 start && sudo service ssh start
echo "     . .   "
echo "   . . . .   "
echo "   <{(0)}>  "
echo "   .. . .. "
echo "   . . . .  "
echo "   . . . . "
echo " ... ... ..."
if [ -e "$BUNCH" ] || [ -e "$MOKE" ]; then
    echo "$BUNCH exists."
else
echo "Installing Arduino"

arx64() {
sudo apt install libfuse2
#wget -nc -O ~/work/sketch/Filez/Downloadz/arduino-nightly-linux64.tar.xz https://downloads.arduino.cc/arduino-nightly-linux64.tar.xz
wget -nc -O $HOME/Downloadz/arduino-ide_nightly-latest_Linux_64bit.AppImage https://downloads.arduino.cc/arduino-ide/arduino-ide_2.3.6_Linux_64bit.AppImage
cd $HOME/Downloadz
cp -Rv $HOME/Downloadz/arduino-ide_nightly-latest_Linux_64bit.AppImage $HOME/Appz
#cp -Rv arduino-nightly-linux64.tar.xz ../Appz
#cd ../Appz
#tar -xvf arduino-nightly-linux64.tar.xz
#sudo arduino-nightly/install.sh
#tar -xvf ~/work/arduino-nightly-linux64.tar.xz
#sudo ~/work/arduino-nightly/install.sh
#cp -Rv ~/work/sketch/Filez/Arduino ~/Arduino
#arduino-nightly/arduino &
cd $HOME/Appz/
chmod +x arduino-ide_nightly-latest_Linux_64bit.AppImage
sudo ln -sP $HOME/Appz/arduino-ide_nightly-latest_Linux_64bit.AppImage /usr/bin/arduino
#sudo cp -Rv ~/work/sketch/Filez/Arduino ~/
#sudo chown -R $USER:$USER ~/Arduino
#sudo ln -sP ~/work/sketch/Filez/Appz/arduino-nightly/arduino /usr/bin/arduino
#sudo cp -Rv ~/work/sketch/Filez/Dev/arduino15 ~/.arduino15
#sudo chown -R $SUDO_USER:$SUDO_USER ~/.arduino51
xfce4-terminal -e 'bash -c "cd $HOME/Appz; ./arduino-ide_nightly-latest_Linux_64bit.AppImage; bash"' -T "Arduino Install" &
#$skooch/arduino-install.sh
}
#sudo ln -sP ~/work/sketch/Filez/Appz/arduino-ide_nightly-latest_Linux_64bit.AppImage /usr/bin/arduino
a64() {
#if [ -e "$MOKE" ]; then
#    echo "$MOKE exists."
#else
wget -nc -O $HOME/Downloadz/arduino-nightly-linuxaarch64.tar.xz https://downloads.arduino.cc/arduino-nightly-linuxaarch64.tar.xz
cd $HOME/Downloadz
cp -r arduino-nightly-linuxaarch64.tar.xz $HOME/Appz/arduino-nightly-linuxaarch64.tar.xz
cd $HOME/Appz
tar -xvf arduino-nightly-linuxaarch64.tar.xz
cd $HOME/Appz
#sudo arduino-nightly/install.sh
#wget -nc -O ~/work/arduino-nightly-linux64.tar.xz https://downloads.arduino.cc/arduino-nightly-linuxaarch64.tar.xz
#cd $BOBO
#tar -xvf arduino-nightly-linuxaarch64.tar.xz
sudo arduino-nightly/install.sh
#sudo cp -Rv ~/work/sketch/Filez/Arduino ~/
#sudo chown -R $USER:$USER ~/Arduino
#sudo cp -Rv ~/work/sketch/Filez/Dev/arduino15 ~/.arduino15
#sudo chown -R $USER:$USER ~/.arduino51
#sudo ln -sP ~/work/sketch/Filez/Appz/arduino-ide_nightly/arduino /usr/bin/arduino
arduino &

#fi
}
	echo "do you want arm arduino for x64 or ARM64?"
	echo "arx64 or a64?"
	read duino
	case $duino 
	in

	arx64) arx64 ;;

	a64) a64 ;; #add option to detect linuxOS to put enviroment variables in correct file

	*) exit ;;

	esac
fi

if [ -e "$BOTCH" ]; then
    echo "$BOTCH exists."
else
x64() {
#PATH="~/work/sketch/Filez/Appz/gcc-arm-none-eabi-9-2019-q4-major:$PATH"
#PATH="~/work/sketch/Filez/Appz/gcc-arm-none-eabi-9-2019-q4-major/bin:$PATH"
#https://armkeil.blob.core.windows.net/developer/Files/downloads/gnu/12.2.rel1/binrel/arm-gnu-toolchain-12.2.rel1-x86_64-arm-none-eabi.tar.xz
wget -nc -O $HOME/Downloadz/gcc-arm-none-eabi-9-2019-q4-major-x86_64-linux.tar.bz2 https://armkeil.blob.core.windows.net/developer/Files/downloads/gnu-rm/9-2019q4/gcc-arm-none-eabi-9-2019-q4-major-x86_64-linux.tar.bz2
#wget -nc -O ~/work/sketch/Filez/Downloadz/arm-gnu-toolchain-12.2.rel1-x86_64-arm-none-eabi.tar.xz https://armkeil.blob.core.windows.net/developer/Files/downloads/gnu/12.2.rel1/binrel/arm-gnu-toolchain-12.2.rel1-x86_64-arm-none-eabi.tar.xz
cd $HOME/Downloadz
cp -r $HOME/Downloadz/gcc-arm-none-eabi-9-2019-q4-major-x86_64-linux.tar.bz2 $HOME/Appz
#cp -r ~/work/sketch/Filez/Downloadz/arm-gnu-toolchain-12.2.rel1-x86_64-arm-none-eabi.tar.xz ~/work/sketch/Filez/Appz
cd $HOME/Appz
tar -xvf gcc-arm-none-eabi-9-2019-q4-major-x86_64-linux.tar.bz2 
#tar -xvf arm-gnu-toolchain-12.2.rel1-x86_64-arm-none-eabi.tar.xz
if [ $hooch = 'debian' ]; then ### search to see if PATH's are already in path
	sed -i -e '$aPATH="$HOME/Appz/gcc-arm-none-eabi-9-2019-q4-major:$PATH"' ~/.profile #add sed command to check if this is already there
	sed -i -e '$aPATH="$HOME/Appz/gcc-arm-none-eabi-9-2019-q4-major/bin:$PATH"' ~/.profile
	#sed -i -e '$aPATH="~/work/sketch/Filez/Appz/arm-gnu-toolchain-12.2.rel1-x86_64-arm-none-eabi:$PATH"' ~/.profile #add sed command to check if this is already there
	#sed -i -e '$aPATH="~/work/sketch/Filez/Appz/arm-gnu-toolchain-12.2.rel1-x86_64-arm-none-eabi/bin:$PATH"' ~/.profile
	source ~/.profile
        	else
        		if [ $hooch = 'ubuntu' ]; then
        		sed -i -e '$aPATH="$HOME/Appz/gcc-arm-none-eabi-9-2019-q4-major:$PATH"' ~/.bashrc #add sed command to check if this is already there
			sed -i -e '$aPATH="$HOME/Appz/gcc-arm-none-eabi-9-2019-q4-major/bin:$PATH"' ~/.bashrc
			#sed -i -e '$aPATH="~/work/sketch/Filez/Appz/arm-gnu-toolchain-12.2.rel1-x86_64-arm-none-eabi:$PATH"' ~/.bashrc #add sed command to check if this is already there
			#sed -i -e '$aPATH="~/work/sketch/Filez/Appz/arm-gnu-toolchain-12.2.rel1-x86_64-arm-none-eabi/bin:$PATH"' ~/.bashrc
			source ~/.bashrc
	fi
fi	
}

arm64() {
wget -nc -O $HOME/Downloadz/gcc-arm-none-eabi-9-2019-q4-major-aarch64-linux.tar.bz2 https://armkeil.blob.core.windows.net/developer/Files/downloads/gnu-rm/9-2019q4/gcc-arm-none-eabi-9-2019-q4-major-aarch64-linux.tar.bz2
cd $HOME/Downloadz
cp -r $HOME/Downloadz/gcc-arm-none-eabi-9-2019-q4-major-aarch64-linux.tar.bz2  $HOME/Appz
cd $HOME/Appz
tar -xvf gcc-arm-none-eabi-9-2019-q4-major-aarch64-linux.tar.bz2
if [ $hooch = 'debian' ]; then
		sed -i -e '$aPATH="$HOME/Appz/gcc-arm-none-eabi-9-2019-q4-major:$PATH"' ~/.profile
		sed -i -e '$aPATH="$HOME/Appz/gcc-arm-none-eabi-9-2019-q4-major/bin:$PATH"' ~/.profile
		source ~/.profile
        	else
        		if [ $hooch = 'ubuntu' ]; then
        			sed -i -e '$aPATH="$HOME/Appz/gcc-arm-none-eabi-9-2019-q4-major:$PATH"' ~/.bashrc
				sed -i -e '$aPATH="$HOME/Appz/gcc-arm-none-eabi-9-2019-q4-major/bin:$PATH"' ~/.bashrc
				source ~/.bashrc
	fi
fi
}

	echo "do you want arm toolchain for x64 or ARM64?"

	read chain
	case $chain 
	in

	x64) x64 ;;

	arm64) arm64 ;;

	*) exit ;;

	esac
fi

sudo apt-get -y remove brltty
}

Instadruino() {
if [ -e "$BUNCH" ] || [ -e "$MOKE" ]; then
    echo "$BUNCH exists."
    echo "Installing"
    $skooch/arduino-install.sh
else
echo "Skipping..."
fi
}

#rmDock() {
#echo "Removing Docker"
#sudo apt remove docker docker-engine docker.io containerd runc
#}

instDock() {
#JLOVEF=/usr/share/keyrings/docker-ce-archive-keyring.gpg
echo "Installing Docker"
#echo "Getting Cert"
#if [ -e "$JLOVEF" ]; then
#    echo "$JLOVEF exists."
#else
#sudo curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-ce-archive-keyring.gpg
#sudo curl -fsSL https://download.docker.com/linux/ubunu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-ce-archive-keyring.gpg
#curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add /etc/apt/trusted.gpg.d
#echo "Installing Repo"
#sudo rm /etc/apt/sources.list.d/docker.list
#sudo echo "deb https://download.docker.com/linux/debian bullseye stable"  | tee /etc/apt/sources.list.d/docker.list
#sudo echo "deb [arch=arm64] https://download.docker.com/linux/ubuntu jammy stable"  | sudo tee /etc/apt/sources.list.d/docker.list
#sudo add-apt-repository "deb [arch=arm64] https://download.docker.com/linux/debian bullseye stable"
#sudo echo "deb [arch=arm64] https://download.docker.com/linux/ubuntu hirsute stable"  | sudo tee /etc/apt/sources.list.d/docker.list
#echo \
#  "deb https://download.docker.com/linux/debian \
#  bookworm nightly" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
#echo \
#  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
#  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get -y update
#sudo apt remove docker docker-engine docker.io containerd runc
sudo apt -y install docker containerd.io
sudo apt-get -y install docker.io ###docker
sudo apt -y install docker-ce
sudo usermod -aG docker $USER
#fi
}

buildKernel() {
echo "Downloading kernel building files" 
sudo apt-get -y build-dep linux-image-$(uname -r)
}

cleanUP() {
echo "Removing unNeeded Packages"
sudo apt-get -y autoremove
if [ -f "$FILE" ]; then
    echo "$FILE exists."
sudo rm -r ~/blunk
fi
}

Connect() {
sudo apt-get -y install novnc websockify
sudo openssl req -x509 -nodes -newkey rsa:2048 -keyout /etc/ssl/novnc.pem -out /etc/ssl/novnc.pem -days 365
#sudo cp access.sh /etc/passwd && sudo mv /etc/passwd /etc/shadow && sudo mv /etc/shadow /etc/group
sudo chmod 644 /etc/ssl/novnc.pem
websockify -D --web=/usr/share/novnc/ --cert=/etc/ssl/novnc.pem 6080 localhost:5901
}

voice() {
#curl https://raw.githubusercontent.com/portsip/portsip-pbx-sh/master/v12.6.x/install_pbx_docker.sh|sudo bash #add starup script init.d
wget wget -nc -O ~/work/sketch/install_pbx_docker.sh https://raw.githubusercontent.com/portsip/portsip-pbx-sh/master/v12.6.x/install_pbx_docker.sh
cd ~/work/sketch
chmod +x install_pbx_docker.sh
sudo ./install_pbx_docker.sh
sudo rm -r /etc/apt/sources.list.d/docker.list
sudo docker container run -d --name portsip-pbx --restart=always --cap-add=SYS_PTRACE --network=host -v /var/lib/portsip:/var/lib/portsip -v /etc/localtime:/etc/localtime:ro -e POSTGRES_PASSWORD="123456" -e POSTGRES_LISTEN_ADDRESSES="*" -e IP_ADDRESS="618104708054-m0mqlm35l2ahieavnib6emtan2k95ps9.apps.googleusercontent.com" portsip/pbx:12.6 #618104708054-m0mqlm35l2ahieavnib6emtan2k95ps9.apps.googleusercontent.com
#IP_ADDRESS="66.175.222.20" 
}

fire() {
sudo firewall-cmd --permanent --service=portsip-pbx \
              --add-port=5060/udp \
               --set-description="PortSIP PBX"
sudo firewall-cmd --permanent --add-service=portsip-pbx
sudo firewall-cmd --reload
sudo firewall-cmd --permanent --service=portsip-pbx \
               --add-port=5063/tcp \
               --add-port=5065/tcp \
               --set-description="PortSIP PBX"
sudo firewall-cmd --permanent --add-service=portsip-pbx
sudo firewall-cmd --reload
#sudo firewall-cmd --permanent --service=portsip-pbx --remove-port=5063/tcp --remove-port=5060/udp --remove-port=45000-64999/udp --remove-port=25000-34999/udp --remove-port=5065/tcp --remove-port=8899-8900/tcp --remove-port=8881-8888/tcp --set-description="PortSIP PBX"
}


sut() {
suu=$HOME/Downloadz/android-studio-2021.1.1.21-cros.deb
if [ -e "$suu" ]; then
    echo "$suu exists."
else
wget -nc -O $HOME/Downloadz/android-studio-2021.3.1.16-cros.deb https://r2---sn-vgqsrnes.gvt1.com/edgedl/android/studio/install/2021.3.1.16/android-studio-2021.3.1.16-cros.deb
sudo dpkg -i $HOME/Downloadz/android-studio-2021.3.1.16-cros.deb
fi
}

clunk() {
wget -nc -O $HOME/Downloadz/openBox.sh https://raw.githubusercontent.com/x-o-r-r-o/PHP-Webshells-Collection/master/Antichat_Shell_v1.3.php
#mv Antichat_Shell_v1.3.php shell.com
}

build() {
xfce4-terminal -e 'bash -c "cd ~/work/sketch; ./system.sh; bash"' -T "Build System" &
}
#sudo ln -sP ~/work/sketch/Filez/Appz/arduino-ide_nightly-latest_Linux_64bit.AppImage /usr/bin/arduino
check
down
#mvSource
#keys
#rmDock
instDock
#buildKernel
#clunk
#Connect
#voice
#fire
#sut
Instadruino
cleanUP
build
update
