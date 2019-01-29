#!/bin/bash
echo "Installing (minimal)"
sudo pacman -Syu
sudo pacman -S xorg-server xorg-xinit xorg-xrandr i3-gaps i3status dmenu feh compton linux-headers nvidia vim htop lolcat neofetch
sudo pacman -S wifi-menu dialog wpa_supplicant
sudo pacman -S base-devel
git clone https://aur.archlinux.org/polybar.git
# Install Polybar
cd polybar
makepkg -si
cd ..
rm -rf polybar
# Install Adwaita dark theme
git clone https://aur.archlinux.org/adwaita-dark.git
cd adwaita-dark
makepkg -si
cd ..
rm -rf adwaita-dark
# Install ZSH, oh-my-zsh, and needed fonts for latter one
sudo pacman -S zsh curl
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
echo "Done"
