#deb cdrom:[Xubuntu 21.04 _Hirsute Hippo_ - Release amd64 (20210420)]/ hirsute main multiverse restricted universe
# See https://help.ubuntu.com/community/UpgradeNotes for how to upgrade to
# newer versions of the distribution.
deb [arch=amd64,i386] http://us.archive.ubuntu.com/ubuntu/ noble main restricted
deb-src http://us.archive.ubuntu.com/ubuntu/ noble main restricted

## Major bug fix updates produced after the final release of the
## distribution.
deb [arch=amd64,i386] http://us.archive.ubuntu.com/ubuntu/ noble-updates main restricted
deb-src http://us.archive.ubuntu.com/ubuntu/ noble-updates main restricted

## N.B. software from this repository is ENTIRELY UNSUPPORTED by the Ubuntu
## team. Also, please note that software in universe WILL NOT receive any
## review or updates from the Ubuntu security team.
deb [arch=amd64,i386] http://us.archive.ubuntu.com/ubuntu/ noble universe
deb-src http://us.archive.ubuntu.com/ubuntu/ noble universe
deb [arch=amd64,i386] http://us.archive.ubuntu.com/ubuntu/ noble-updates universe
deb-src http://us.archive.ubuntu.com/ubuntu/ noble-updates universe

## N.B. software from this repository is ENTIRELY UNSUPPORTED by the Ubuntu 
## team, and may not be under a free licence. Please satisfy yourself as to 
## your rights to use the software. Also, please note that software in 
## multiverse WILL NOT receive any review or updates from the Ubuntu
## security team.
deb [arch=amd64,i386] http://us.archive.ubuntu.com/ubuntu/ noble multiverse
deb-src http://us.archive.ubuntu.com/ubuntu/ noble multiverse
deb [arch=amd64,i386] http://us.archive.ubuntu.com/ubuntu/ noble-updates multiverse
deb-src http://us.archive.ubuntu.com/ubuntu/ noble-updates multiverse

## N.B. software from this repository may not have been tested as
## extensively as that contained in the main release, although it includes
## newer versions of some applications which may provide useful features.
## Also, please note that software in backports WILL NOT receive any review
## or updates from the Ubuntu security team.
deb [arch=amd64,i386] http://us.archive.ubuntu.com/ubuntu/ noble-backports main universe 
deb-src http://us.archive.ubuntu.com/ubuntu/ noble-backports main restricted universe multiverse

## Uncomment the following two lines to add software from Canonical's
## 'partner' repository.
## This software is not part of Ubuntu, but is offered by Canonical and the
## respective vendors as a service to Ubuntu users.
# deb http://archive.canonical.com/ubuntu noble partner
# deb-src http://archive.canonical.com/ubuntu noble partner

deb [arch=amd64,i386] http://security.ubuntu.com/ubuntu noble-security main restricted
deb-src http://security.ubuntu.com/ubuntu noble-security main restricted
deb [arch=amd64,i386] http://security.ubuntu.com/ubuntu noble-security universe
deb-src http://security.ubuntu.com/ubuntu noble-security universe
deb [arch=amd64,i386] http://security.ubuntu.com/ubuntu noble-security multiverse
deb-src http://security.ubuntu.com/ubuntu noble-security multiverse



deb [arch=arm64,armhf] http://ports.ubuntu.com/ubuntu-ports noble restricted main multiverse universe
deb-src http://ports.ubuntu.com/ubuntu-ports noble main multiverse restricted universe


deb [arch=arm64,armhf] http://ports.ubuntu.com/ubuntu-ports noble-updates main universe restricted multiverse
deb-src http://ports.ubuntu.com/ubuntu-ports noble-updates main multiverse restricted universe


deb [arch=arm64,armhf] http://ports.ubuntu.com/ubuntu-ports noble-security main universe restricted multiverse
deb-src http://ports.ubuntu.com/ubuntu-ports noble-security main multiverse restricted universe


deb [arch=arm64] http://ports.ubuntu.com/ubuntu-ports noble-proposed main universe restricted multiverse
deb-src http://ports.ubuntu.com/ubuntu-ports noble-proposed main multiverse restricted universe


deb [arch=arm64,armhf] http://ports.ubuntu.com/ubuntu-ports noble-backports main multiverse restricted universe
deb-src http://ports.ubuntu.com/ubuntu-ports noble-backports main multiverse restricted universe




#deb http://ports.ubuntu.com/ubuntu-ports hirsute restricted main multiverse universe
#deb-src http://ports.ubuntu.com/ubuntu-ports hirsute main multiverse restricted universe


#deb http://ports.ubuntu.com/ubuntu-ports hirsute-updates main universe restricted multiverse
#deb-src http://ports.ubuntu.com/ubuntu-ports hirsute-updates main multiverse restricted universe


#deb http://ports.ubuntu.com/ubuntu-ports hirsute-security main universe restricted multiverse
#deb-src http://ports.ubuntu.com/ubuntu-ports hirsute-security main multiverse restricted universe


#deb http://ports.ubuntu.com/ubuntu-ports hirsute-proposed main universe restricted multiverse
#deb-src http://ports.ubuntu.com/ubuntu-ports hirsute-proposed main multiverse restricted universe


#deb http://ports.ubuntu.com/ubuntu-ports hirsute-backports main multiverse restricted universe
#deb-src http://ports.ubuntu.com/ubuntu-ports hirsute-backports main multiverse restricted universe



#deb http://http.kali.org/kali kali-rolling main non-free contrib
#deb-src http://http.kali.org/kali kali-rolling main non-free contrib

#deb http://deb.debian.org/debian/ sid main contrib non-free
#deb-src http://deb.debian.org/debian/ sid main contrib non-free

#deb http://deb.debian.org/debian/ testing-updates main contrib non-free
#deb-src http://deb.debian.org/debian/ testing-updates main contrib non-free

#deb http://deb.debian.org/debian-security testing-security main
#deb-src http://deb.debian.org/debian-security testing-security main

#deb http://deb.debian.org/debian buster-backports main
#deb-src  http://deb.debian.org/debian buster-backports main


# This system was installed using small removable media
# (e.g. netinst, live or single CD). The matching "deb cdrom"
# entries were disabled at the end of the installation process.
# For information about how to configure apt package sources,
# see the sources.list(5) manual.
