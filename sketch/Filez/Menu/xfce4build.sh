#!/bin/bash

echo "building xfce 4"

cd $HOME/sourceCode/x86/xfce4/xfdesktop
./autogen.sh
make
sudo make install
