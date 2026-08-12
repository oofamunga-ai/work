#!/bin/bash

###make a menu item for linux build system and pinephone build system and other fun toys
mkdir $HOME/sourceCode/pine

mobian() {
mkdir -p ~/sourceCode/pine
cd ~/sourceCode/pine
#git clone --recurse-submodules https://gitlab.com/mobian1/mobian-recipes.git
git clone --recursive https://salsa.debian.org/Mobian-team/mobian-recipes.git
cd ~/sourceCode/pine/mobian-recipes
#git pull
rm -r ~/sourceCode/pine/mobian-recipes/include/packages-phosh.yaml
cp ~/work/sketch/Filez/builder/packages-phosh.yaml ~/sourceCode/pine/mobian-recipes/include/packages-phosh.yaml
echo "pinephone or pinephone (pro)"
read pine
echo "what Username?"
read name
if [ $pine = 'pro' ]; then
#echo "what username would you like?"
#read bust
    #xfce4-terminal -e 'bash -c "cd $HOME/work/sketch/Filez/sourceCode/pine/mobian-recipes; sudo ./build.sh -d -x sid -S staging -t pinephonepro; bash"' -T "PinePhone Pro" &
    #xfce4-terminal -e 'bash -c "cd ~/work/sketch/Filez/sourceCode/pine/mobian-recipes; sudo ./build.sh -d -t pinephonepro -o -u '$name'; bash"' -T "PinePhone Pro" &
    cd ~/sourceCode/pine/mobian-recipes
    sudo ./build.sh -u $name -x sid -S staging -t pinephonepro
    #sudo ./build.sh -o -t pinephonepro
else
### ad question of what board you wanna build for also add question for username
#echo "what username would you like?"
#read bust
    #xfce4-terminal -e 'bash -c "cd ~/work/sketch/Filez/sourceCode/pine/mobian-recipes; sudo ./build.sh -x sid -S unstable -d -t pinephone -o -u '$name'; bash"' -T "PinePhone" &
    cd ~/sourceCode/pine/mobian-recipes
    sudo ./build.sh -x sid -S staging -t pinephone -o -u '$name'
fi
}


bl808-linux() {
cd ~/work/sketch/Filez/sourceCode/arm
mkdir -p toolchain/cmake toolchain/elf_newlib_toolchain toolchain/linux_toolchain
curl https://cmake.org/files/v3.19/cmake-3.19.3-Linux-x86_64.tar.gz | tar xz -C toolchain/cmake/ --strip-components=1
curl http://occ-oss-prod.oss-cn-hangzhou.aliyuncs.com/resource//1663142243961/Xuantie-900-gcc-elf-newlib-x86_64-V2.6.1-20220906.tar.gz | tar xz -C toolchain/elf_newlib_toolchain/ --strip-components=1
curl https://datashare.ed.ac.uk/bitstream/handle/10283/4835/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.6.1-20220906.tar.gz | tar xz -C toolchain/linux_toolchain/ --strip-components=1
cd ~/work/sketch/Filez/sourceCode/arm
git clone https://github.com/bouffalolab/bl808_linux.git
cd ~/work/sketch/Filez/sourceCode/arm/bl808_linux
./build.sh --help
./build.sh opensbi
./build.sh kernel_config
./build.sh kernel
./build.sh dtb
./build.sh low_load
./build.sh whole_bin
./build.sh all
}

buildroot() {
echo "building BuildRooT for Pinephone Pro"
read cbox
mkdir -p $HOME/sourceCode/arm
cd $HOME/sourceCode/arm
git clone https://gitlab.com/buildroot.org/buildroot.git
cd $HOME/sourceCode/arm/buildroot
#make defconfig
make ARCH=riscv CROSS_COMPILE=riscv64-linux-gnu- #xconfig
make xconfig
make
}

Ox64() {
echo "building buildroot for pine Ox64"
read cbox
mkdir -p $HOME/sourceCode/arm/ox64
cd $HOME/sourceCode/arm/ox64
#mkdir buildroot_bouffalo
#cd $HOME/sourceCode/arm/ox64/buildroot_bouffalo
git clone https://github.com/buildroot/buildroot
git clone https://github.com/openbouffalo/buildroot_bouffalo
export BR_BOUFFALO_OVERLAY_PATH=$(pwd)/buildroot_bouffalo
cd $HOME/sourceCode/arm/ox64/buildroot
make BR2_EXTERNAL=$BR_BOUFFALO_OVERLAY_PATH pine64_ox64_full_defconfig
make xconfig
make
}

pppkb() {
echo "Building pinephone keyboard firmware"
cd ~/work/sketch/Filez/sourceCode/pine
git clone https://xff.cz/git/pinephone-keyboard
cd ~/work/sketch/Filez/sourceCode/pine/pinephone-keyboard
git pull
make
sudo ./build/ppkb-i2c-inputd
cd ~/work/sketch/Filez/sourceCode/pine/pinephone-keyboard/firmware
./build.sh
cd $HOME/work/sketch/Filez/sourceCode/pine/pinephone-keyboard/build
sudo ./ppkb-i2c-flasher --rom-in ../firmware/build/fw-stock.bin write reset
}

ubuntu() {
cd ~/sourceCode/pine
git clone https://gitlab.com/ubports/core/rootfs-builder-debos.git
cd ~/pine/rootfs-builder-debos
git pull
sudo ./debos -m 5G pinephone.yaml
}


mobianKernel() {
cd ~/sourceCode/pine
#git clone -b wip/pp-keyboard https://github.com/smaeul/linux.git ~/work/sketch/Filez/sourceCode/pine/smaeulLinux
#git clone --recurse-submodules -b wip/pp-keyboard https://github.com/smaeul/linux.git ~/work/sketch/Filez/sourceCode/
git clone https://salsa.debian.org/Mobian-team/devices/kernels/rockchip-linux.git --recursive
#cd ~/work/sketch/Filez/sourceCode/pine/smaeulLinux
cd ~/sourceCode/pine/rockchip-linux
git pull
#sudo rm -r ~/work/sketch/Filez/sourceCode/pine/smaeulLinux/.config
#cp -r ~/work/sketch/Filez/builder/pineConfig ~/work/sketch/Filez/sourceCode/pine/smaeulLinux/.config
#ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make defconfig
#make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- xconfig
#ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make -j4 bindeb-pkg KERNELRELEASE="6.7-sunxi64-test" KDEB_PKGVERSION="1"
gbp pq import
env ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- debian/rules .config
env ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make xconfig
fakeroot env ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- debian/rules binary
env ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make savedefconfig
}

tow-boot() {
cd ~/work/sketch/Filez/sourceCode/pine
git clone https://github.com/Tow-Boot/Tow-Boot.git
cd ~/work/sketch/Filez/sourceCode/pine/Tow-Boot
git pull
}


skiffos() {
cd ~/sourceCode/pine
git clone https://github.com/skiffos/SkiffOS.git
cd ~/sourceCode/pine/SkiffOS
git pull
echo "pinephone or pinephone (pro)"
read pine
if [ $pine = 'pinephone' ]; then
### ad question of what board you wanna build for also add question for username
#echo "what username would you like?"
#read bust
    #xfce4-terminal -e 'bash -c "cd ~/sourceCode/pine/SkiffOS; export SKIFF_CONFIG=core/pinephone_manjaro_kde; make configure; make compile; bash"' -T "SkiffOS PinePhone" &
cd ~/sourceCode/pine/SkiffOS
export SKIFF_CONFIG=core/pinephone_manjaro_kde
make configure
make compile
else
#echo "what username would you like?"
#read bust
        #xfce4-terminal -e 'bash -c "cd ~/sourceCode/pine/SkiffOS; export SKIFF_CONFIG=core/pinephone_manjaro_phosh; make configure; make compile; bash"' -T "SkiffOS PinePhone" &
cd ~/sourceCode/pine/SkiffOS
export SKIFF_CONFIG=core/pinephone_manjaro_phosh
make configure
make compile
fi
#export SKIFF_CONFIG=pine64/phone,core/pinephone_manjaro_kde 
}

arch() {
cd ~/work/sketch/Filez/sourceCode/pine
git clone https://github.com/dreemurrs-embedded/Pine64-Arch.git
cd ~/work/sketch/Filez/sourceCode/pine/Pine64-Arch
git pull
./build.sh
}

armbian() {
cd ~/sourceCode/pine
#git clone https://github.com/daboss7627/build.git
git clone https://github.com/armbian/build.git
cd ~/sourceCode/pine/build
git pull
#sudo rm -r ~/sourceCode/pine/build/lib/functions/host/prepare-host.sh
cp ~/work/sketch/Filez/builder/prepare-host.sh ~/sourceCode/pine/build/lib/functions/host/prepare-host.sh
./compile.sh EXPERT="yes" 
#BOARD=firefly-rk3399 \
#BRANCH=edge \
#RELEASE=sid \
#BUILD_MINIMAL=yes \
#BUILD_DESKTOP=yes \
#KERNEL_ONLY=no \
#KERNEL_CONFIGURE=no \
#CARD_DEVICE="/dev/sdb"
}

android() {
echo "Building AndroidOS"
}

Jumpdrive() {
cd ~/work/sketch/Filez/sourceCode/pine
git clone https://github.com/dreemurrs-embedded/Jumpdrive.git
cd ~/work/sketch/Filez/sourceCode/pine/Jumpdrive
git submodule update --init --recursive
make -j8 pine64-pinephone.img.xz
make -j8 initramfs-pine64-pinephone.gz
make -j8 all
}


u-boot() {
 cd ~/work/sketch/Filez/sourceCode/arm
 git clone https://github.com/crust-firmware/arm-trusted-firmware
 cd ~/work/sketch/Filez/sourceCode/arm/arm-trusted-firmware
 #cd arm-trusted-firmware
 sudo rm -r Makefile
 cp -Rv ../../../builder/uboot.Makefile Makefile
 export CROSS_COMPILE=aarch64-linux-gnu-
 export ARCH=arm64
 make xconfig
 #make PLAT=sun50i_a64 -j$(nproc) bl31
 make PLAT=rk3399 -j$(nproc) bl31
 echo "finished arm trusted firmware"
 read uk
 cd ~/work/sketch/Filez/sourceCode/arm
 git clone https://gitlab.com/pine64-org/u-boot.git
 cd ~/work/sketch/Filez/sourceCode/arm/arm-trusted-firmware
 #cp build/sun50i_a64/release/bl31.bin ../u-boot/
 cp ~/work/sketch/Filez/sourceCode/arm/arm-trusted-firmware/build/rk3399/release/bl31/bl31.bin ../u-boot/bl31.bin
 cd ~/work/sketch/Filez/sourceCode/arm
 wget -nc -O ~/work/sketch/Filez/Downloadz/or1k-linux-musl-cross.tgz https://musl.cc/or1k-linux-musl-cross.tgz
 mv ~/work/sketch/Filez/Downloadz/or1k-linux-musl-cross.tgz ~/work/sketch/Filez/Appz
 cd ~/work/sketch/Filez/Appz
 tar zxvf ~/work/sketch/Filez/Appz/or1k-linux-musl-cross.tgz
 export PATH="$PATH:$HOME/work/sketch/Filez/Appz/or1k-linux-musl-cross/bin/" ###Add to .bashrc
 echo "finished uboot"
 cd ~/work/sketch/Filez/sourceCode/arm
 read ub
 git clone https://github.com/crust-firmware/crust
 cd ~/work/sketch/Filez/sourceCode/arm/crust
 export CROSS_COMPILE=or1k-linux-musl-
 make pinephone_defconfig
 #make pinephonepro_defconfig
 make xconfig
 make -j$(nproc) scp
 cp build/scp/scp.bin ../u-boot/
 cd ~/work/sketch/Filez/sourceCode/arm
 cd ~/work/sketch/Filez/sourceCode/arm/u-boot/
 git checkout crust
 export CROSS_COMPILE=aarch64-linux-gnu-
 export BL31=bl31.bin
 export ARCH=arm64
 export SCP=scp.bin
 make distclean
 make pinephone_defconfig
 make xconfig
 #make pinephonepro_defconfig
 make all -j$(nproc)
echo "finished crust"
echo "u-boot finished"
read hs
}


kaliPine() {
#sudo cp ~/work/sketch/Filez/Backupz/kali.trusted.gpg /usr/share/keyrings/kali-archive-keyring.gpg
cd ~/work/sketch/Filez/sourceCode/pine
#git clone --recurse-submodules https://gitlab.com/mobian1/mobian-recipes.git
git clone https://gitlab.com/kalilinux/nethunter/build-scripts/kali-nethunter-pro.git
cd ~/work/sketch/Filez/sourceCode/pine/kali-nethunter-pro
git pull
#rm -r ~/work/sketch/Filez/sourceCode/pine/kali-nethunter-pro/include/packages-phosh.yaml
#cp ~/work/sketch/Filez/builder/packages-phosh.yaml ~/work/sketch/Filez/sourceCode/pine/kali-nethunter-pro/include/packages-phosh.yaml
echo "pinephone or pinephone (pro)"
read pine
if [ $pine = 'pinephone' ]; then
### ad question of what board you wanna build for also add question for username
echo "what username would you like?"
read BUST
    #xfce4-terminal -e 'bash -c "cd ~/work/sketch/Filez/sourceCode/pine/kali-nethunter-pro; sudo ./build.sh -t pinephone -o -u $BUST; bash"' -T "PinePhone" &
cd ~/work/sketch/Filez/sourceCode/pine/kali-nethunter-pro
sudo ./build.sh -t pinephone -o
else
echo "what username would you like?"
read BUSTs
    #xfce4-terminal -e 'bash -c "cd ~/work/sketch/Filez/sourceCode/pine/kali-nethunter-pro; sudo ./build.sh -t pinephonepro -o -u $BUST; bash"' -T "PinePhone Pro" &
cd ~/work/sketch/Filez/sourceCode/pine/kali-nethunter-pro
sudo ./build.sh -t pinephonepro -o
fi
}

#echo "Do you want to build a system?"
#read builder
#if [ $builder = 'yes' ]; then

	echo "What system would you like to build?"
	echo "Mobian			skiffOS"
	echo "(Ubuntu) Touch		Arch linux"
	echo "Mobian (mobianKernel)	Jumpdrive"
	echo "Armbian			U-Boot"
        echo "(Android)OS		tow-boot "
	echo "pppkb			kaliPine "
	echo "BuildRoot	    	Ox64"
	echo "bl808-linux"
	read fliz
	case $fliz
	in

	u-boot) u-boot ;;	
	
	Ox64) Ox64 ;;
	
	bl808-linux) bl808-linux ;;
	
	armbian) armbian ;;

	buildroot) buildroot ;;

	mobian) mobian ;;

	ubuntu) ubuntu ;;

	mobianKernel) mobianKernel ;;

	skiffos) skiffos ;;

	arch) arch ;;
	
	pppkb) pppkb ;;
	
	Jumpdrive) Jumpdrive ;;
	
	tow-boot) tow-boot ;;
	
	kaliPine) kaliPine ;;

	*) exit ;;

	esac

	#else
	#elif [ $builder = 'no' ]; then
	#echo "ok"
	#exit 0
#fi

yes() {
echo "yes"
cd ~/work/sketch
git add .
git config --global user.email "you@example.com"
git config --global user.name "Your Name"
git commit -m "."
git push #add custom enter username and password to auto fill out with encryption.
}

blok() {
echo "zip"
}

no() {
echo "no"
}

	echo "Upload GIT Files?"
	echo "Yes/No"

	read gitz
	case $gitz 
	in

	yes) yes ;;

	no) no ;;
	
	blok) blok ;;

	*) exit ;;

	esac
