#!/bin/bash

sudo apt-get update
sudo dpkg --configure -a
sudo apt --fix-broken install
sudo apt-get -y autoremove
