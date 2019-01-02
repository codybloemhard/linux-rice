#!/bin/bash
echo "Installing"
sudo xbps-install -Suv
sudo xbps-install -S -y xorg
sudo xbps-install -S -y i3-gaps
sudo xbps-install -S -y i3status
sudo xbps-install -S -y dmenu
sudo xbps-install -S -y feh
sudo xbps-install -S -y lxappearance
sudo xbps-install -S -y compton
sudo xbps-install -S -y terminator
sudo xbps-install -S -y NetworkManager
sudo xbps-install -S -y vim
sudo xbps-install -S -y scrot
sudo xbps-install -S -y htop
sudo xbps-install -S -y asla-firmware
sudo xbps-install -S -y alsa-utils
sudo xbps-install -S -y arc-theme
sudo xbps-install -S -y gcc
sudo xbps-install -S -y make
sudo xbps-install -S -y linux-headers
sudo xbps-install -S -y chromium
sudo xbps-install -S -y vscode
sudo xbps-install -Suv
echo "Configuring"
mkdir ~/.config/i3
cp i3gaps/config ~/.config/i3/config
mkdir ~/.config/compton
cp compton/compton.conf ~/.config/compton/compton.conf
mkdir ~/.config/terminator
cp terminator/config ~/.config/terminator/config
cp xserver/.xinitrc ~/.xinitrc
mkdir ~/img
cp background.jpg ~/img/background.jpg
echo "Done"
