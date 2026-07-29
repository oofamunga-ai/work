#!/bin/bash

MONK=~/work/sketch
FILE=~/blunk
BOBO=~/work
BUNCH=~/work/arduino-nightly
BOTCH=~/work/arm-gnu-toolchain-12.2.mpacbti-bet1-x86_64-arm-none-eabi.tar.xz

### add github update only to menu system
if [ -e "$BOBO" ]; then
    echo "$BOBO exists."
else
    echo "$BOBO does not exist."
    mkdir ~/work
    cd ~/work
    git clone https://github.com/daboss7627/sketch.git
fi

#sudo apt-get update
#sudo dpkg --configure -a
#sudo apt --fix-broken install
#sudo apt-get -y autoremove
arduino() {
if [ -e "$BUNCH" ]; then
    echo "$BUNCH exists."
else
echo "Installing Arduino"

arx64() {
wget -nc -O ~/work/arduino-nightly-linux64.tar.xz https://downloads.arduino.cc/arduino-nightly-linux64.tar.xz
cd $BOBO
tar -xvf arduino-nightly-linux64.tar.xz
sudo arduino-nightly/install.sh
#tar -xvf ~/work/arduino-nightly-linux64.tar.xz
#sudo ~/work/arduino-nightly/install.sh
arduino &
}

a64() {
wget -nc -O ~/work/arduino-nightly-linux64.tar.xz https://downloads.arduino.cc/arduino-nightly-linuxaarch64.tar.xz
cd $BOBO
tar -xvf arduino-nightly-linuxaarch64.tar.xz
sudo arduino-nightly/install.sh
arduino &
}
	echo "do you want arm arduino for x64 or ARM64?"
	echo "arx64 or a64?"
	read duino
	case $duino 
	in

	arx64) arx64 ;;

	a64) a64 ;;

	*) exit ;;

	esac
fi
}

arm() {
if [ -e "$BOTCH" ]; then
    echo "$BOTCH exists."
else

x64() {
wget -nc -O ~/work/arm-gnu-toolchain-12.2.mpacbti-bet1-x86_64-arm-none-eabi.tar.xz https://developer.arm.com/-/media/Files/downloads/gnu/12.2.mpacbti-bet1/binrel/arm-gnu-toolchain-12.2.mpacbti-bet1-x86_64-arm-none-eabi.tar.xz
cd $BOBO
tar -xvf arm-gnu-toolchain-12.2.mpacbti-bet1-x86_64-arm-none-eabi.tar.xz
sed -i -e '$aPATH="$HOME/work/arm-gnu-toolchain-12.2.mpacbti-bet1-x86_64-arm-none-eabi:$PATH"' ~/.bashrc
sed -i -e '$aPATH="$HOME/work/arm-gnu-toolchain-12.2.mpacbti-bet1-x86_64-arm-none-eabi/bin:$PATH"' ~/.bashrc
source ~/.bashrc
}

arm64() {
wget -nc -O ~/work/12.2.mpacbti-bet1/binrel/arm-gnu-toolchain-12.2.mpacbti-bet1-aarch64-arm-none-eabi.tar.xz https://armkeil.blob.core.windows.net/developer/Files/downloads/gnu/12.2.mpacbti-bet1/binrel/arm-gnu-toolchain-12.2.mpacbti-bet1-aarch64-arm-none-eabi.tar.xz
cd $BOBO
tar -xvf 12.2.mpacbti-bet1/binrel/arm-gnu-toolchain-12.2.mpacbti-bet1-aarch64-arm-none-eabi.tar.xz
sed -i -e '$aPATH="$HOME/work/arm-gnu-toolchain-12.2.mpacbti-bet1-aarch64-arm-none-eabi:$PATH"' ~/.bashrc
sed -i -e '$aPATH="$HOME/work/arm-gnu-toolchain-12.2.mpacbti-bet1-aarch64-arm-none-eabi/bin:$PATH"' ~/.bashrc
source ~/.bashrc
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
}

dev() {
#xfce4-terminal -e 'bash -c "cd ~/work/sketch; ./startup.sh; bash"' -T "Start Up" &
$MONK/startup.sh
}

system() {
#xfce4-terminal -e 'bash -c "cd ~/work/sketch; ./system.sh; bash"' -T "Build System" &
$MONK/system.sh
}

terminal() {
xfce4-terminal -e 'bash -c "cd ~/work/sketch; sudo apt-get install cmatrix; bash"' -T "Matrix" & 
#xfce4-terminal -e 'bash -c "cd ~/work/sketch; ./terminal.py; bash"' -T "Matrix" &
}

menu() {
xfce4-terminal -e 'bash -c "cd ~/work/sketch; sudo apt-get install cmatrix; bash"' -T "Matrix" & 
}

fixpackages() {
echo "fixing packages"
./fixpackages.sh
}

	echo "What would you like to do?"
	echo "install (Dev)     ,,	Build a (System)"
	echo "Install (Arduino)	,,	Install GCC (ARM) Toolchains"
	echo "Custom (Terminal) ,, 	or Arduino (Menu)"
	echo "fixpackages       ,,      (Exit) "

	read env
	case $env 
	in

	fixpackages) fixpackages ;;

	arduino) arduino ;;
	
	menu) menu ;;
	
	arm) arm ;;

	dev) dev ;;

	system) system ;;

	terminal) terminal ;;

	*) exit ;;

	esac

