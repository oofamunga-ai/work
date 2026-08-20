###This document is used to describe the steps for building the Debian image for the PineTab-V device. The relevant pre-compiled packages can be found in Releases.
##Building PineTab-V Debian image.

#    Install prerequisites on Ubuntu 22.04

sudo apt-get install docker.io qemu-user-static -y

#    Download docker image
cd $HOME/Downloads
wget -nc https://debianrepo-t.starfivetech.com/pinetabv/container-pinetabv.tar.gz

#    Import docker image

sudo docker import container-pinetabv.tar.gz build_pinetabv:S1

#    Setup share directory

export  PATH_TO_HOST_SHARE=/mnt

#    Run docker container

sudo docker run --privileged -v ${PATH_TO_HOST_SHARE}:/home/build/share-point -it build_pinetabv:S1 /bin/bash ./home/build/build-pinetabv-img.sh && cp /home/build/starfive-jh7110-minimal-desktop.img /home/build/share-point


#    Run build script

/home/build/build-pinetabv-img.sh

#    Copy image to shared directory

cp /home/build/starfive-jh7110-minimal-desktop.img /home/build/share-point

#    Image will be generated in the following path

#/mnt/starfive-jh7110-minimal-desktop.img
