#!/bin/bash


#mobian() {
#cd ~/work/sketch/Filez/sourceCode
#git clone --recurse-submodules https://gitlab.com/mobian1/mobian-recipes.git
#git clone https://salsa.debian.org/Mobian-team/mobian-recipes.git
#cd ~/work/sketch/Filez/sourceCode/mobian-recipes
#git pull
#rm -r ~/work/sketch/Filez/sourceCode/mobian-recipes/include/packages-phosh.yaml
#cp ~/work/sketch/Filez/builder/packages-phosh.yaml ~/work/sketch/Filez/sourceCode/mobian-recipes/include/packages-phosh.yaml
#echo "pinephone or pinephone (pro)"
#read pine
#if [ $pine = 'pinephone' ]; then
### ad question of what board you wanna build for also add question for username
#echo "what username would you like?"
#read bust
#    xfce4-terminal -e 'bash -c "cd ~/work/sketch/Filez/sourceCode/mobian-recipes; sudo ./build.sh -x sid -S unstable -d -t pinephone -o; bash"' -T "PinePhone" &
#else
#echo "what username would you like?"
#read bust
#    xfce4-terminal -e 'bash -c "cd ~/work/sketch/Filez/sourceCode/mobian-recipes; sudo ./build.sh -x sid -S unstable -d -t pinephonepro -o; bash"' -T "PinePhone Pro" &
#fi
#}

Arduino() {
echo "Building Arduino"
cd ~/work/sketch/Filez/sourceCode
git clone https://github.com/arduino/arduino-ide.git
cd ~/work/sketch/Filez/sourceCode/arduino-ide

}

linuxKernel() {
echo "Building Linux Kernel"
cd ~/work/sketch/Filez/sourceCode
git clone https://github.com/torvalds/linux.git

}

kernel() {
echo "building Linux Kernel"
mkdir -p $HOME/sourceCode/pc
cd $HOME/sourceCode/pc
#git clone --recurse-submodules https://github.com/daboss7627/linux.git ~/work/sketch/Filez/sourceCode/LinuxKernel
git clone --recurse-submodules https://github.com/torvalds/linux.git $HOME/sourceCode/pc/LinuxKernel
cd ~/sourceCode/pc/LinuxKernel
git pull
git add .
git commit -m "."
git merge
#cp /boot/config-$(uname -r) .config
#make oldconfig
make ARCH=arm64 defconfig
#make ARCH=riscv CROSS_COMPILE=riscv64-linux-gnu- xconfig
#make ARCH=x86_64 x86_64_defconfig
#make xconfig
#make -j$(nproc) ARCH=riscv CROSS_COMPILE=riscv64-linux-gnu- bindeb-pkg
make -j `nproc` bindeb-pkg
#cp -r ~/work/sketch/Filez/builder/pineconfig ~/work/sketch/Filez/sourceCode/linux/.config
#ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make ~/work/sketch/Filez/sourceCode/linux/arch/arm64/configs/defconfig
#make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- xconfig
#ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make -j4 bindeb-pkg KERNELRELEASE="5.9-sunxi64-test" KDEB_PKGVERSION="1"
}

grapheneos() {
echo "installing Graphene OS"
mkdir $HOME/sourceCode/arm/grapheneos
cd $HOME/sourceCode/arm/grapheneos
repo init -u https://github.com/GrapheneOS/platform_manifest.git #-b 16-qpr1
repo sync -j4
yarn install --cwd vendor/adevtool/
source build/envsetup.sh
m aapt2
adevtool generate-all -d bluejay
source build/envsetup.sh
lunch bluejay-userdebug
export OFFICIAL_BUILD=true
rm -r out
#m target-files-package
m vendorbootimage target-files-package
mkdir -p keys/bluejay
cd keys/bluejay
CN=GrapheneOS
../../development/tools/make_key releasekey "/CN=$CN/"
../../development/tools/make_key platform "/CN=$CN/"
../../development/tools/make_key shared "/CN=$CN/"
../../development/tools/make_key media "/CN=$CN/"
../../development/tools/make_key networkstack "/CN=$CN/"
../../development/tools/make_key sdk_sandbox "/CN=$CN/"
../../development/tools/make_key bluetooth "/CN=$CN/"
openssl genrsa 4096 | openssl pkcs8 -topk8 -scrypt -out avb.pem
../../external/avb/avbtool.py extract_public_key --key avb.pem --output avb_pkmd.bin
cd ../..
signify -G -n -p keys/bluejay/factory.pub -s keys/bluejay/factory.sec
script/encrypt_keys.sh keys/bluejay
m otatools-package
script/release.sh bluejay
cd $HOME/sourceCode/arm/grapheneos
mkdir -p android/kernel
cd $HOME/sourceCode/arm/grapheneos/android/kernel
git clone https://gitlab.com/grapheneos/kernel_pixel.git --recurse-submodules #-b 16-qpr2
cd kernel_pixel
#repo sync -j2
#BUILD_CONFIG=private/msm-google/build.config.redbull.vintf build/build.sh
KLEAF_REPO_MANIFEST=aosp_manifest.xml ./build_bluejay.sh --lto=full
}

nethunterkernel() {
cd $HOME/work/sketch/Filez/sourceCode/arm
git clone https://gitlab.com/kalilinux/nethunter/build-scripts/kali-nethunter-kernel
cd $HOME/work/sketch/Filez/sourceCode/arm/kali-nethunter-kernel
cp local.config.examples/local.config.example.sdm660 local.config
./build.sh
}

#pppkb() {
#echo "Building pinephone keyboard firmware"
#cd ~/work/sketch/Filez/sourceCode
#git clone https://xff.cz/git/pinephone-keyboard
#cd ~/work/sketch/Filez/sourceCode/pinephone-keyboard
#git pull
#make
#sudo ./build/ppkb-i2c-inputd
#cd ~/work/sketch/Filez/sourceCode/pinephone-keyboard/firmware
#./build.sh
#}

#ubuntu() {
#cd ~/work
#git clone https://gitlab.com/ubports/core/rootfs-builder-debos.git
#cd rootfs-builder-debos
#git pull
#sudo debos-docker -m 5G pinephone.yaml
#}

#mobianKernel() {
#cd ~/work/sketch/Filez/sourceCode
#git clone -b wip/pp-keyboard https://github.com/smaeul/linux.git ~/work/sketch/Filez/sourceCode/smaeulLinux
#git clone --recurse-submodules -b wip/pp-keyboard https://github.com/smaeul/linux.git ~/work/sketch/Filez/sourceCode/
#cd ~/work/sketch/Filez/sourceCode/smaeulLinux
#git pull
#sudo rm -r ~/work/sketch/Filez/sourceCode/smaeulLinux/.config
#cp -r ~/work/sketch/Filez/builder/pineConfig ~/work/sketch/Filez/sourceCode/smaeulLinux/.config
#ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make defconfig
#make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- xconfig
#ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make -j4 bindeb-pkg KERNELRELEASE="5.9-sunxi64-test" KDEB_PKGVERSION="1"
#}

#skiffos() {
#cd ~/work/sketch/Filez/sourceCode
#git clone https://github.com/skiffos/SkiffOS.git
#cd SkiffOS
#git pull
#echo "pinephone or pinephone (pro)"
#read pine
#if [ $pine = 'pinephone' ]; then
### ad question of what board you wanna build for also add question for username
#echo "what username would you like?"
#read bust
#    xfce4-terminal -e 'bash -c "cd ~/work/sketch/Filez/sourceCode/SkiffOS; export SKIFF_CONFIG=core/pinephone_manjaro_phosh; make configure; make compile; bash"' -T "SkiffOS PinePhone" &
#else
#echo "what username would you like?"
#read bust
#        xfce4-terminal -e 'bash -c "cd ~/work/sketch/Filez/sourceCode/SkiffOS; export SKIFF_CONFIG=core/pinephone_manjaro_phosh; make configure; make compile; bash"' -T "SkiffOS PinePhone" &
#fi
#export SKIFF_CONFIG=pine64/phone,core/pinephone_manjaro_kde 
#}

#arch() {
#cd ~/work
#git clone https://github.com/dreemurrs-embedded/Pine64-Arch.git
#cd Pine64-Arch
#git pull
#}

mayhem() {
mkdir -p ~/sourceCode/rf
cd ~/sourceCode/rf
#git clone --recurse-submodules https://github.com/daboss7627/portapack-mayhem.git
git clone --recurse-submodules https://github.com/eried/portapack-mayhem.git
cd ~/sourceCode/rf/portapack-mayhem
#git pull
sudo rm -r build
mkdir build
cd build
cmake ..
make firmware
}

carnage() {
mkdir -p ~/sourceCode/rf
cd ~/sourceCode/rf
#git clone --recurse-submodules https://github.com/daboss7627/portapack-carnage.git
git clone --recurse-submodules https://github.com/Acetolyne/portapack-carnage.git
cd ~/sourceCode/rf/portapack-carnage
git pull
mkdir build
cd build
cmake ..
make firmware
}

coreboot() {
cd ~/work/sketch/Filez/sourceCode/bios
git clone https://review.coreboot.org/coreboot.git
cd ~/work/sketch/Filez/sourceCode/bios/coreboot
#rm -r ~/work/sketch/Filez/sourceCode/bios/coreboot/util/crossgcc/Makefile.inc
#cp ~/work/sketch/Filez/builder/Makefile.inc ~/work/sketch/Filez/sourceCode/bios/coreboot/util/crossgcc/Makefile.inc
#rm -r ~/work/sketch/Filez/sourceCode/bios/coreboot/.config
cp ~/work/sketch/Filez/builder/coreboot_config ~/work/sketch/Filez/sourceCode/bios/coreboot/.config
make help_toolchain
make crossgcc-i386 CPUS=$(nproc)
#make crossgcc-x64 CPUS=$(nproc) 
#make -C payloads/coreinfo olddefconfig
make -C payloads/coreinfo
#make nconfig
make menuconfig
make
echo "--------------------------------------"
echo "--------------------------------------"
echo "i386 finished"
make crossgcc-x64 CPUS=$(nproc) 
#make -C payloads/coreinfo olddefconfig
make -C payloads/coreinfo
#make nconfig
make menuconfig
make
echo "amd64 finished"
echo "--------------------------------------"
echo "--------------------------------------"
}

pineTime() {
echo "New Gadget Menu"
cd ~/work/sketch/Filez/Menu
./pineTime.sh
}

pinephoneOS() {
#xfce4-terminal -e 'bash -c "~/work/sketch/Filez/Menu/pinephoneOS.sh; bash"' -T "pine Menu" &
cd ~/work/sketch/Filez/Menu
./pinephoneOS.sh
}

armbian() {
cd ~/sourceCode/arm
#git clone https://github.com/daboss7627/build.git
git clone --recursive https://github.com/armbian/build.git
cd ~/sourceCode/arm/build
git pull
#sudo rm -r ~/work/sketch/Filez/sourceCode/arm/build/lib/functions/host/prepare-host.sh
#cp ~/work/sketch/Filez/builder/prepare-host.sh ~/work/sketch/Filez/sourceCode/arm/build/lib/functions/host/prepare-host.sh
./compile.sh EXPERT=yes KERNEL_BTF=no #\
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
mkdir -p $HOME/work/sketch/Filez/sourceCode/arm/LineageOS
mkdir -p $HOME/work/sketch/Filez/sourceCode/arm/LineageOS/bin
mkdir -p $HOME/work/sketch/Filez/sourceCode/arm/LineageOS/android/lineage
curl https://storage.googleapis.com/git-repo-downloads/repo > $HOME/work/sketch/Filez/sourceCode/arm/LineageOS/bin/repo
chmod a+x $HOME/work/sketch/Filez/sourceCode/arm/LineageOS/bin/repo
git config --global user.email "you@example.com"
git config --global user.name "Your Name"
git lfs install
export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
ccache -M 50G
ccache -o compression=true
cd $HOME/work/sketch/Filez/sourceCode/arm/LineageOS/android/lineage
repo init -u https://github.com/LineageOS/android.git -b lineage-20.0 --git-lfs
repo sync
source build/envsetup.sh
breakfast barbet
cd $HOME/work/sketch/Filez/sourceCode/arm/LineageOS/android/lineage/device/google/barbet
./extract-files.sh
cd $HOME/work/sketch/Filez/sourceCode/arm/LineageOS/android/lineage
croot
brunch barbet
###Install Build
    
crab() {
cd $OUT
}

flow() {
echo "coolio"
}
	echo "would you like to install LineageOS on pixel?"

	read jaks
	case $jaks 
	in

	crab) yes ;;

	flow) no ;;

	*) exit ;;

	esac


}

chromium() {
echo "Building ChromiumOS"
}

merge() {
echo "Merging Carnage and Mayhem"
mkdir -p ~/sourceCode/rf/portaCarnage
}

openwrt() {
echo "Building OpenWRT"
mkdir -p ~/sourceCode/pc
cd ~/sourceCode/pc
git clone https://github.com/openwrt/openwrt.git 
cd ~/sourceCode/pc/openwrt
git pull
#xfce4-terminal -e 'bash -c "cd ~/work/sketch/Filez/sourceCode/pc/openwrt; ./scripts/feeds update -a; ./scripts/feeds install -a; make xconfig; make; bash"' -T "openWRT" &
cd ~/sourceCode/pc/openwrt 
./scripts/feeds update -a 
./scripts/feeds update -a
make ARCH=riscv CROSS_COMPILE=riscv64-linux-gnu- xconfig
#make xconfig
make
}

ddwrt() {
echo "Building DD-WRT"
cd ~/work/sketch/Filez/sourceCode/arm
git clone https://github.com/mirror/dd-wrt.git
cd ~/work/sketch/Filez/sourceCode/arm/dd-wrt

}

#echo "Do you want to build a system?"
#read builder
#if [ $builder = 'yes' ]; then

	echo "What system would you like to build?"
	echo "grapheneos		nethunterkernel"
	echo "pineTime			"
	#echo "Mobian (mobianKernel)	portapack"
	echo "portapack	    		pinephoneOS Menu"
	echo "Linux Kernel (Kernel)	Armbian"
        echo "portapack-(carnage)	(Android)OS		 "
	echo "(Chromium)OS 		(merge) Carnage and Mayhem"
	echo "openWRT 			DD-WRT"
	#echo "pppkb			      "
	echo "coreboot			Arduino"
	read systemz
	case $systemz 
	in

	armbian) armbian ;;

	grapheneos) grapheneos ;;

	nethunterkernel) nethunterkernel ;;

	#mobianKernel) mobianKernel ;;

	#skiffos) skiffos ;;

	#arch) arch ;;
	
	pinephoneOS) pinephoneOS ;;

	pineTime) pineTime ;;

	portapack) mayhem ;;
	
	carnage) carnage ;; #automatic merge mayhem and carnage

	coreboot) coreboot ;;

	kernel) kernel ;;
	
	android) android ;;
	
	chromium) chromium ;;
	
	merge) merge ;;
	
	openwrt) openwrt ;;

	ddwrt) ddwrt ;;
	
	#pppkb) pppkb ;;

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
