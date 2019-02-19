#!/bin/bash
echo "Installing (minimal)"
sudo pacman -Syu
sudo pacman -S xorg-server xorg-xinit xorg-xrandr i3-gaps i3status dmenu feh compton linux-headers nvidia vim htop neofetch
sudo pacman -S wifi-menu dialog wpa_supplicant
sudo pacman -S base-devel pacman-contrib
# install yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm -rf yay
# install better lolcat
yay -S c-lolcat
# Install Polybar
git clone https://aur.archlinux.org/polybar.git
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
