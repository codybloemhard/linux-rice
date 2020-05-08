#!/bin/bash
echo "Installing (minimal)"
_path=$( pwd )
sudo pacman -Syyu --noconfirm
sudo pacman -Sy --noconfirm xorg-server xorg-xinit xorg-xrandr i3-gaps i3status feh picom linux-headers nvidia htop neofetch exa neovim
sudo pacman -Sy --noconfirm wifi-menu dialog wpa_supplicant iw
sudo pacman -Sy --noconfirm base-devel pacman-contrib
sudo ../neovim/install.sh
# install st fork
mkdir ~/git
cd ~/git
git clone https://github.com/ocdy1001/st-cody.git
cd st-cody
sudo make install
cd $_path
# install dmenu fork
cd ~/git
git clone https://gIthub.com/ocdy1001/dmenu-cody.git --depth=1
cd dmenu-cody
./build
cd $_path
# install yay
git clone https://aur.archlinux.org/yay.git --depth=1
cd yay
makepkg -si
cd ..
rm -rf yay
# install better lolcat
yay -S c-lolcat
# Install Polybar
git clone https://aur.archlinux.org/polybar.git --depth=1
cd polybar
makepkg -si
cd ..
rm -rf polybar
# Install Adwaita dark theme
yay -S adwaita-slim-gtk-theme
# Install ZSH, oh-my-zsh, and needed fonts for latter one
sudo pacman -S zsh curl
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
echo "Done"
