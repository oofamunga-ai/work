#!/bin/bash


echo "             ^"
echo "             _"
echo "- - - _ ---_-_-_"

stack() {
echo "Hello Moto"
}

vanko() {
echo "local listen,(yes), remote listen?(no)"
read anz
#if [ $anz = 'yes' ];
#sudo apt -y install novnc x11vnc
sudo apt -y install novnc tightvncserver
vncserver

#x11vnc -display :1 -autoport -localhost -nopw -bg -xkb -ncache -ncache_cr -quiet -forever
/usr/share/novnc/utils/launch.sh --listen 8081 --vnc localhost:5901
 
  # elif [ $anz = 'no' ];
        #utils/novnc_proxy --vnc localhost:5901
#fi
#sudo apt install novnc
#sudo apt install ssh
#sudo systemctl enable ssh --now
#./utils/novnc_proxy --vnc localhost:5901
###ssh kali@192.168.13.37 -L 8081:localhost:8081

}

stack
vanko
