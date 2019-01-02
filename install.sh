#!/bin/bash
echo "Installing"
xbps-install -S -y
xbps-install -S -y i3-gaps
xbps-install -S -y i3status
xbps-install -S -y dmenu
xbps-install -S -y feh
xbps-install -S -y lxappearance
xbps-install -S -y compton
xbps-install -S -y terminator
xbps-install -S -y NetworkManager
xbps-install -S -y vim
xbps-install -S -y scrot
xbps-install -S -y htop
xbps-install -S -y asla-firmware
xbps-install -S -y alsa-utils
xbps-install -S -y chromium
cp i3/config ~/.config/i3/config
cp compton/compton.conf ~.config/compton/compton.conf
cp terminator/config ~/.config/terminator/config
cp xserver/.xinitrc ~/.xinitrc
mkdir ~/img
cp background.jpg ~/img/background.jpg
echo "Done"
