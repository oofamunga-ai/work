#!/bin/bash

mkdir -p $HOME/sourceCode/x86/xfce4
cd $HOME/sourceCode/x86/xfce4
git clone https://gitlab.xfce.org/xfce/xfdesktop.git --recursive
git clone https://gitlab.xfce.org/xfce/libxfce4util.git --recursive
git clone https://gitlab.xfce.org/xfce/libxfce4ui.git --recursive
git clone https://gitlab.xfce.org/xfce/libxfce4windowing.git --recursive
git clone https://gitlab.xfce.org/xfce/xfce4-dev-tools.git --recursive
git clone https://gitlab.xfce.org/xfce/xfconf.git --recursive
git clone https://gitlab.xfce.org/xfce/xfce4-session.git --recursive
git clone https://gitlab.xfce.org/xfce/xfce4-power-manager.git --recursive
git clone https://gitlab.xfce.org/xfce/xfwm4.git --recursive
git clone https://gitlab.xfce.org/xfce/xfce4-settings.git --recursive
git clone https://gitlab.xfce.org/xfce/xfce4-appfinder.git --recursive
git clone https://gitlab.xfce.org/xfce/tumbler.git --recursive
git clone https://gitlab.xfce.org/xfce/thunar-volman.git --recursive
git clone https://gitlab.xfce.org/xfce/thunar.git --recursive
git clone https://gitlab.xfce.org/xfce/xfce4-panel.git --recursive
git clone https://gitlab.xfce.org/xfce/garcon.git --recursive
git clone https://gitlab.xfce.org/xfce/exo.git --recursive
git clone https://github.com/GNOME/libgudev.git --recursive

echo "Do you want to try and update all files?"
read fizz
if [ $fizz = 'yes' ]; then
######################################################
#algorythm to go in every directory to build each file
######################################################


cd $HOME/sourceCode/x86/xfce4/xfce4-dev-tools
git pull
./autogen.sh
make
sudo make install

cd $HOME/sourceCode/x86/xfce4/libxfce4util
git pull
sudo apt instal -y gtk-doc-tools

cd $HOME/sourceCode/x86/xfce4/xfconf
git pull
cd $HOME/sourceCode/x86/xfce4/libxfce4ui
git pull
cd $HOME/sourceCode/x86/xfce4/xfdesktop
git pull
cd $HOME/sourceCode/x86/xfce4/libxfce4windowing
git pull
cd $HOME/sourceCode/x86/xfce4/xfce4-session
git pull
cd $HOME/sourceCode/x86/xfce4/xfce4-power-manager
git pull
cd $HOME/sourceCode/x86/xfce4/xfwm4
git pull
cd $HOME/sourceCode/x86/xfce4/xfce4-settings
git pull
cd $HOME/sourceCode/x86/xfce4/xfce4-appfinder
git pull
cd $HOME/sourceCode/x86/xfce4/tumbler
git pull
cd $HOME/sourceCode/x86/xfce4/thunar-volman
git pull
cd $HOME/sourceCode/x86/xfce4/thunar
git pull
cd $HOME/sourceCode/x86/xfce4/xfce4-panel
git pull
cd $HOME/sourceCode/x86/xfce4/garcon
git pull
cd $HOME/sourceCode/x86/xfce4/exo
git pull
cd $HOME/sourceCode/x86/xfce4/libgudev
git pull
        else
            echo "Coo"
fi
