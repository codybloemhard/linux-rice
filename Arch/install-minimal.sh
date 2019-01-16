#!/bin/bash
echo "Installing (minimal)"
sudo pacman -Syu
sudo pacman -S xorg-server xorg-xinit xorg-xrandr i3-gaps i3status dmenu feh compton terminator linux-headers nvidia
sudo pacman -S wifi-menu dialog wpa_supplicant
sudo pacman -S base-devel
git clone https://aur.archlinux.org/polybar.git
cd polybar
makepkg -si
cd ..
rm -rf polybar
git clone https://aur.archlinux.org/adwaita-dark.git
cd adwaita-dark
makepkg -si
cd ..
rm -rf adwaita-dark
echo "Done"
