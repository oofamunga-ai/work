#!/bin/bash

#nano ~/.bashrc
#export PATH="$HOME/sourceCode/pc/tools/depot_tools:$PATH"
#umask 002
#sudo nano /etc/profile
#umask 022
#sudo reboot
sudo apt-get update
sudo apt-get install -y python3.11
sudo apt-get install -y python-is-python3
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.11 2
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.10 1
#sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.6 3

mkdir -p $HOME/sourceCode/pc/tools
cd $HOME/sourceCode/pc/tools
sudo apt-get install -y python3-oauth2client
sudo apt-get -y install git-core gitk git-gui curl lvm2 thin-provisioning-tools python3-virtualenv nano screen xz-utils 
sudo apt-get install repo -y
sudo apt-get install -y python3-pkg-resources
#sudo apt-get install -y python3.6
git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git

git config --global user.email "."
git config --global user.name "."

#cat > sudo_editor <<EOF
## #!/bin/sh
#echo Defaults \!tty_tickets > \$1
#echo Defaults timestamp_timeout=180 >> \$1
#EOF

#chmod +x sudo_editor
#sudo EDITOR=sudo_editor visudo -f /etc/sudoers.d/relax_requirements

mkdir -p $HOME/sourceCode/pc/chromiumos && cd $HOME/sourceCode/pc/chromiumos
#repo init -u https://chromium.googlesource.com/chromiumos/manifest.git --repo-url https://chromium.googlesource.com/external/repo.git
#repo init -u https://chromium.googlesource.com/chromiumos/manifest -b snapshot

repo init -u https://chromium.googlesource.com/chromiumos/manifest.git -b snapshot --repo-url https://chromium.googlesource.com/external/repo.git

###if ! grep -qF "$HOME/sourceCode/pc/tools/depot_tools" "$HOME/.profile"; #then
if [[ $(sed -n '/PATH="$HOME/sourceCode/pc/tools/depot_tools:$PATH/p"' ~/.profile <<< "$variable") ]]; then
  echo "String found"
else
  echo "String not found"
sed -i -e '$aPATH="$HOME/sourceCode/pc/tools/depot_tools:$PATH"' ~/.profile
fi
source ~/.profile
#sed -i -e '$aPATH="$HOME/sourceCode/pc/chromiumos/:$PATH"' ~/.profile

repo sync -j$(nproc)
#repo sync

cd ~/sourceCode/pc/chromiumos/
#cros_sdk --enter
#cros_sdk
#cd ~/chromiumos/src/overlays/
#cd ~/chromiumos/src/overlays/overlay-amd64-generic/
#exit #export BOARD=starmie
#./setup_board --board=${BOARD}
#cros build-packages '--board=amd64-generic'
#cros build-image '--board=amd64-generic' --no-enable-rootfs-verification test
#cros build-image '--board=amd64-generic' dev
#USE="login_enable_crosh_sudo arc arcvm" cros --color build-packages --chromium --withdev chromeos-installer --board=staryu --accept-licenses="*" #chromeos-base/android-sdk, acct-user/android-root, acct-group/android-root, dev-util/android-tools
USE="kvm login_enable_crosh_sudo arc" cros --color build-packages --chromium chromeos-base/chromeos-chrome --withdev --board=staryu  --accept-licenses="*"
#USE=login_enable_crosh_sudo cros build-packages '--board=staryu' --accept-licenses="*" 
USE="kvm arc" cros build-image -j$(nproc) '--board=staryu' --no-enable-rootfs-verification --boot-args 'disablevmx=off lsm.module_locking=0' dev #gumboz #dev #test
#USE=kvm cros build-image '--board=staryu' --no-enable-rootfs-verification test #gumboz #dev #test
#./USE=login_enable_crosh_sudo build-packages '--board=staryu'
#./build-image '--board=starmie' --no-enable-rootfs-verification test
