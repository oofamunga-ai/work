#deb cdrom:[Xubuntu 21.04 _Hirsute Hippo_ - Release amd64 (20210420)]/ jammy main multiverse restricted universe


#deb http://http.kali.org/kali kali-rolling main non-free contrib
#deb-src http://http.kali.org/kali kali-rolling main non-free contrib

#deb http://deb.debian.org/debian/ testing main contrib non-free
#deb-src http://deb.debian.org/debian/ testing main contrib non-free

#deb http://deb.debian.org/debian/ testing-updates main contrib non-free
#deb-src http://deb.debian.org/debian/ testing-updates main contrib non-free

#deb http://deb.debian.org/debian-security testing-security main
#deb-src http://deb.debian.org/debian-security testing-security main

#deb http://deb.debian.org/debian buster-backports main
#deb-src  http://deb.debian.org/debian buster-backports main

# See http://help.ubuntu.com/community/UpgradeNotes for how to upgrade to
# newer versions of the distribution.
deb http://us.archive.ubuntu.com/ubuntu/ jammy main restricted
deb-src http://us.archive.ubuntu.com/ubuntu/ jammy main restricted

## Major bug fix updates produced after the final release of the
## distribution.
deb http://us.archive.ubuntu.com/ubuntu/ jammy-updates main restricted
deb-src http://us.archive.ubuntu.com/ubuntu/ jammy-updates main restricted

## N.B. software from this repository is ENTIRELY UNSUPPORTED by the Ubuntu
## team. Also, please note that software in universe WILL NOT receive any
## review or updates from the Ubuntu security team.
deb http://us.archive.ubuntu.com/ubuntu/ jammy universe
deb-src http://us.archive.ubuntu.com/ubuntu/ jammy universe
deb http://us.archive.ubuntu.com/ubuntu/ jammy-updates universe
deb-src http://us.archive.ubuntu.com/ubuntu/ jammy-updates universe

## N.B. software from this repository is ENTIRELY UNSUPPORTED by the Ubuntu 
## team, and may not be under a free licence. Please satisfy yourself as to 
## your rights to use the software. Also, please note that software in 
## multiverse WILL NOT receive any review or updates from the Ubuntu
## security team.
deb http://us.archive.ubuntu.com/ubuntu/ jammy multiverse
deb-src http://us.archive.ubuntu.com/ubuntu/ jammy multiverse
deb http://us.archive.ubuntu.com/ubuntu/ jammy-updates multiverse
deb-src http://us.archive.ubuntu.com/ubuntu/ jammy-updates multiverse

## N.B. software from this repository may not have been tested as
## extensively as that contained in the main release, although it includes
## newer versions of some applications which may provide useful features.
## Also, please note that software in backports WILL NOT receive any review
## or updates from the Ubuntu security team.
deb http://us.archive.ubuntu.com/ubuntu/ jammy-backports main universe 
deb-src http://us.archive.ubuntu.com/ubuntu/ jammy-backports main restricted universe multiverse

## Uncomment the following two lines to add software from Canonical's
## 'partner' repository.
## This software is not part of Ubuntu, but is offered by Canonical and the
## respective vendors as a service to Ubuntu users.
# deb http://archive.canonical.com/ubuntu jammy partner
# deb-src http://archive.canonical.com/ubuntu jammy partner

deb http://security.ubuntu.com/ubuntu jammy-security main restricted
deb-src http://security.ubuntu.com/ubuntu jammy-security main restricted
deb http://security.ubuntu.com/ubuntu jammy-security universe
deb-src http://security.ubuntu.com/ubuntu jammy-security universe
deb http://security.ubuntu.com/ubuntu jammy-security multiverse
deb-src http://security.ubuntu.com/ubuntu jammy-security multiverse



#deb http://ports.ubuntu.com/ubuntu-ports jammy restricted main multiverse universe
#deb-src http://ports.ubuntu.com/ubuntu-ports jammy main multiverse restricted universe


#deb http://ports.ubuntu.com/ubuntu-ports jammy-updates main universe restricted multiverse
#deb-src http://ports.ubuntu.com/ubuntu-ports jammy-updates main multiverse restricted universe


#deb http://ports.ubuntu.com/ubuntu-ports jammy-security main universe restricted multiverse
#deb-src http://ports.ubuntu.com/ubuntu-ports jammy-security main multiverse restricted universe


#deb http://ports.ubuntu.com/ubuntu-ports jammy-proposed main universe restricted multiverse
#deb-src http://ports.ubuntu.com/ubuntu-ports jammy-proposed main multiverse restricted universe


#deb http://ports.ubuntu.com/ubuntu-ports jammy-backports main multiverse restricted universe
#deb-src http://ports.ubuntu.com/ubuntu-ports jammy-backports main multiverse restricted universe


# This system was installed using small removable media
# (e.g. netinst, live or single CD). The matching "deb cdrom"
# entries were disabled at the end of the installation process.
# For information about how to configure apt package sources,
# see the sources.list(5) manual.