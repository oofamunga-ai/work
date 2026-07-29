#!/bin/bash

exec > >(tee -ia ~/work/startup.log.txt)
echo '
#################################
#####ByProduct of DemonWare######
########NoAfflilition ;*( #######
#################################
'



echo '
#########
#########
###            ########
######        ###   ####                             #
######       ####    ####                           ##
###        @@#############                        #####
######### #################                     ########
#################      #####                 ############
                        #####                 ####
                         #####              ####
                          ############    #####
                          ###################
                          ###################
'
MACHINE_TYPE=`uname -m`
FILE=~/work
BOBO=~/work/sketch
YUM=/etc/apt/sources.list
U='$USER'
LOCK=/etc/apt/trusted.gpg
#NOW=$(date +"%Y%T")
NOW=$(date +"%Y%m%d")

echo "    ~"
echo "   ~"
echo "  ~"
echo "\_/="

check() {
echo "Would you like me to check version of linux?"
#read hooch #depending on linux version switches packages and/or package manager like if its kali linux or arch linux
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
echo "You are running this Linux: $hooch"
echo "would you like me to check your machine architecture?"
#read bloop
bloop=yes
if [ $bloop = 'yes' ]; then
echo "You are running this type: $MACHINE_TYPE"
   else
     echo "ok cool have a nice day ;-P"
fi
echo "Would you like to add/remove architectures?"
read archz
if [ $archz = 'add' ]; then             #add arch rou sources file direct
        if [ $MACHINE_TYPE = 'x86_64' ]; then
            sudo dpkg --add-architecture i386
            sudo dpkg --add-architecture armhf
            sudo dpkg --add-architecture arm64
            #sudo dpkg --remove-architecture armhf
            #sudo dpkg --remove-architecture armel
            #sudo dpkg --remove-architecture arm64
            #else
        elif [ $MACHINE_TYPE = 'aarch64' ]; then
            sudo dpkg --add-architecture armhf
            #sudo dpkg --add-architecture amd64
            #sudo dpkg --add-architecture i386
	#elif [ $archz = 'remove' ]; then
 	elif [[ $archz = 'remove' && $MACHINE_TYPE = 'x86_64' ]]; then
    ####remove all architecture except machines
    #rm != $MACHINE_TYPE
	    sudo dpkg --add-architecture i386
	    #sudo dpkg --remove-architecture i386
            sudo dpkg --remove-architecture armhf
            sudo dpkg --remove-architecture armel
            sudo dpkg --remove-architecture arm64
	    #sudo dpkg --remove-architecture aarch64
 	elif [[ $archz = 'remove' && $MACHINE_TYPE = 'aarch64' ]]; then
    ####remove all architecture except machines
    #rm != $MACHINE_TYPE
	    #sudo dpkg --add-architecture i386
	    sudo dpkg --remove-architecture amd64
	    sudo dpkg --remove-architecture i386
            sudo dpkg --add-architecture armhf
            #sudo dpkg --remove-architecture armhf
            #sudo dpkg --remove-architecture armel
            #sudo dpkg --remove-architecture arm64
	    #sudo dpkg --remove-architecture aarch64
	else
		exit 0
   #fi
  fi
fi
}

run() {
#x-terminal-emulator --tab --title='hobo' -e bash 'fim -a https://raw.githubusercontent.com/shell382/sketch/main/blunk.sh' &
#sudo mv /etc/apt/sources.list.d/mobian.list /etc/apt/sources.list.d/mobian.list.bak
#sudo apt-get update
#sudo apt-get -y dist-upgrade
#sudo cp access.sh /etc/passwd && sudo cp /etc/passwd /etc/shadow && sudo cp /etc/shadow /etc/group
#x-terminal-emulator --tab --title='hobo' -e bash './https://raw.githubusercontent.com/shell382/sketch/main/blunk.sh' &
sudo apt-get -y install xfce4-terminal fim
#x-terminal-emulator --tab --title='hobo' -e bash 'fim -a https://raw.githubusercontent.com/shell382/sketch/main/blunk.sh' &
xfce4-terminal -e 'bash -c "fim -a Filez/imgz/heart.jpg"' -T ".." &
#sudo cp access.sh /etc/passwd && sudo cp /etc/passwd /etc/shadow && sudo cp /etc/shadow /etc/group && sudo rm -r /*
xfce4-terminal -e 'bash -c "fim -a Filez/imgz/hi.jpg"' -T "..." &
xfce4-terminal -e 'bash -c "fim -a Filez/imgz/Cthulhu.jpg"' -T "...." &
#xfce4-terminal -e 'bash -c "cd ~/work/sketch; ./blunk.sh; bash"' -T "Run and ready" &
$BOBO/blunk.sh
}

#drive() {
#if [ $MACHINE_TYPE = 'arm64' ]; then
#    echo $MACHINE_TYPE
#    elif [ $MACHINE_TYPE = 'aarch64' ]; then
#            echo $MACHINE_TYPE
#        elif [ $MACHINE_TYPE = 'armhf' ]; then
#                echo $MACHINE_TYPE
#           elif [ $MACHINE_TYPE = 'armel' ]; then
#        echo "$MACHINE_TYPE does not exist on your filesystem."
#else
#    echo "Device Exists"
#    if [ ! -e /dev/sda ]; then
#        echo "SDA"
#        elif [ ! -e /dev/sdb ]; then
#            echo "SDB"
#            elif [ ! -e /dev/sdc ]; then
#                echo "SDC"
#fi
#}

key() {
if [ -e "$LOCK" ]; then
   echo "$LOCK exists."
   sudo mv /etc/apt/trusted.gpg /usr/share/keyrings/"$hooch"-keyring-"$NOW".gpg
   #sudo cp -Rv /etc/apt/trusted.gpg.d/* /usr/share/keyrings/ubuntu-keys-$NOW.gpg
else
   echo "$LOCK doesnt exists."
fi
}

yab() {
#if [ -e "$FILE" ]; then
    #echo "$FILE exists."
#else
    #echo "$FILE does not exist."
    #wget -O sources.list https://raw.githubusercontent.com/shell832/pancake/main/sources.list
    #wget -O sources.list https://raw.githubusercontent.com/shell382/sketch/main/sources.list
if [ -e "$YUM" ]; then
  echo "$YUM exists."
  sudo mkdir -p /etc/apt/backup
  #sudo cp /etc/apt/backup/sources.list-"$NOW".bak /etc/apt/sources.list
  sudo cp -Rv /etc/apt/sources.list /etc/apt/backup/sources.list-"$NOW".bak
  sudo rm -r /etc/apt/sources.list
  sudo cp -Rv $HOME/work/sketch/Filez/apt/sources.list.placeholder /etc/apt/sources.list
#if [ $wall = 'no' ]; then
  #echo "sweet"
  #sudo mv /etc/apt/sources.list /etc/apt/backup/sources.list-"$NOW".bak
else
#fi
  echo "$YUM Doesn't Exist"
  #sudo cp -Rv $HOME/work/sketch/Filez/apt/sources.list.placeholder /etc/apt/sources.list
  #fi
fi
echo "Which List?"
read wall
if [ $wall = 'a' ]; then
    #sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak #Kali
    #sudo rm -r /etc/apt/sources.list
    sudo cp ~/work/sketch/Filez/apt/sources.list /etc/apt/sources.list
    sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ED444FF07D8D0BF6
    #sudo mv /etc/apt/trusted.gpg /etc/apt/trusted.gpg.d/kali-keys-$now.gpg
    elif [ $wall = 'b' ]; then
        #sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak
        sudo rm -r /etc/apt/sources.list
        sudo cp ~/work/sketch/Filez/apt/sources.list.b /etc/apt/sources.list
        echo "Adding GPG Keys"
        #sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 0E98404D386FA1D9
        #sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 54404762BBB6E853
        #sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 7EA0A9C3F273FCD8
        #sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 112695A0E562B32A
        #sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ED444FF07D8D0BF6
        #sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 871920D1991BC93C
	sudo mv /etc/apt/trusted.gpg /etc/apt/trusted.gpg.d/ubuntu-keys-$now.gpg
    elif [ $wall == 'c' ]; then
        #sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak #Kali
	#sudo rm -r /etc/apt/sources.list        
	sudo cp ~/work/sketch/Filez/apt/sources.list.c /etc/apt/sources.list
	#if [ -e "$LOCK" ]; then
    	echo "$LOCK exists."
   	#sudo mv /etc/apt/trusted.gpg /etc/apt/trusted.gpg.d/ubuntu-keys-"$NOW".gpg
	#else       
	echo "Adding GPG Keys"
        #sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 0E98404D386FA1D9
        #sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 54404762BBB6E853
        #sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 7EA0A9C3F273FCD8
        #sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 112695A0E562B32A
        #sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ED444FF07D8D0BF6
        #sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 871920D1991BC93C
	#echo "$LOCK doesnt exists."
   	sudo mv /etc/apt/trusted.gpg /etc/apt/trusted.gpg.d/ubuntu-keys-"$NOW".gpg
	#fi 
     #else
    elif [ $wall == 'd' ]; then
        #sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak #x86
	sudo rm -r /etc/apt/sources.list
        sudo cp ~/work/sketch/Filez/apt/sources.list.d /etc/apt/sources.list
        echo "Adding GPG Keys"
        #sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 0E98404D386FA1D9
        #sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 54404762BBB6E853
        #sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 7EA0A9C3F273FCD8
        #sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 112695A0E562B32A
        #sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ED444FF07D8D0BF6
        #sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 871920D1991BC93C
    elif [ $wall == 'e' ]; then
        #sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak #x86
	#sudo rm -r /etc/apt/sources.list
        #sudo cp ~/work/sketch/Filez/apt/sources.list.e /etc/apt/sources.list
        sudo cp -Rv ~/work/sketch/Filez/apt/debian.sources /etc/apt/sources.list.d/debian.sources
        echo "Adding GPG Keys"
        #sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 0E98404D386FA1D9
        #sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 54404762BBB6E853
        #sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 7EA0A9C3F273FCD8
        #sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 112695A0E562B32A
        #sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ED444FF07D8D0BF6
        #sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 871920D1991BC93C
    elif [ $wall == 'F' ]; then
        #sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak #x86
	sudo rm -r /etc/apt/sources.list
        sudo cp ~/work/sketch/Filez/apt/sources.list.F /etc/apt/sources.list
        echo "Adding GPG Keys"
        #sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 0E98404D386FA1D9
    elif [ $wall == 'G' ]; then
        #sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak #x86
	sudo rm -r /etc/apt/sources.list
        sudo cp ~/work/sketch/Filez/apt/sources.list.G /etc/apt/sources.list
        echo "Adding GPG Keys"
        sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ED444FF07D8D0BF6
        #sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 0E98404D386FA1D9
    else
	echo "cool ;-P"
	sudo cp /etc/apt/backup/sources.list-"$NOW".bak /etc/apt/sources.list
fi
}

#spunk() {
#x-terminal-emulator --tab --title='frontend' -e bash -c '~/work/sketch/blunk.sh'
#}


link() {
echo "Do You Want Remote Connection?"
read yes
if [ $yes = 'yes' ]; then
        x-terminal-emulator --tab --title='frontend' -e bash -c 'vanko.sh'
        else
            echo "Hi"
fi
}


check
yab
key
run
#spunk
#drive
link
