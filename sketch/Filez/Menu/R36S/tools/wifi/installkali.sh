#!/bin/bash
sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak
sudo cp -Rv sources.list /etc/apt/sources.list
sudo apt-get -y update
sudo apt-get -y dist-upgrade

