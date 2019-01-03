#!/bin/bash
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
echo "Installing"
sudo xbps-install -Suv
sudo xbps-install -Sy xorg i3-gaps i3status dmenu feh lxappearance compton terminator NetworkManager vim scrot htop alsa-firmware alsa-utils arc-theme gcc make linux-headers chromium
sudo xbps-install -Sy void-repo-multilib void-repo-multilib-nonfree void-repo-nonfree
sudo xbps-install -S
sudo xbps-install -Sy vscode
sudo xbps-install -Suv
cd $parent_path
echo "Configuring"
mkdir ~/.config
mkdir ~/.config/i3
cp i3gaps/config ~/.config/i3/config
mkdir ~/.config/compton
cp compton/compton.conf ~/.config/compton/compton.conf
mkdir ~/.config/terminator
cp terminator/config ~/.config/terminator/config
cp xserver/.xinitrc ~/.xinitrc
mkdir ~/.config/polybar
cp polybar/run-poly.sh ~/.config/polybar/run-poly.sh
sudo chmod +x ~/.config/polybar/run-poly.sh
cp polybar/config ~/.config/polybar/config
mkdir ~/img
cp background.jpg ~/img/background.jpg
echo "Done"
