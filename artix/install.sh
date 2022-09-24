#!/bin/sh
_path=$( pwd )
# Sync and update
sudo pacman --noconfirm -Syyu
sudo pacman --noconfirm -S artix-archlinux-support
sudo cp confs/pacman.conf /etc/pacman.conf
sudo pacman --noconfirm -Sy
sudo
# Xorg and essentials
sudo pacman -S --noconfirm xorg-server xorg-xinit xorg-xrandr xorg-xrdb xdg-utils cmake i3-gaps feh picom linux-headers nvidia btop neovim firefox
# Utilities
sudo pacman -S --noconfirm neofetch exa scrot alsa-firmware alsa-utils unzip zip slock pulseaudio the_silver_searcher fzf xclip bat ntp dust
# Network
sudo pacman -S --noconfirm iw wpa_supplicant #
# Dev
sudo pacman -S --noconfirm base-devel pacman-contrib
sudo ../neovim/install.sh
# Install neovim things
../neovim/install.sh
# Install st fork
mkdir ~/git
cd ~/git
git clone https://github.com/codybloemhard/st-cody.git
cd st-cody
sudo make install
cd $_path
# Install dmenu fork
cd ~/git
git clone https://github.com/codybloemhard/dmenu-cody.git --depth=1
cd dmenu-cody
./build
cd $_path
# Install aur helper (paru)
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git --depth=1
cd paru
makepkg -si
cd ..
rm -rf paru
# Install Shapebar
cd ~/git
git clone https://github.com/codybloemhard/shapebar
cd shapebar
sudo make install
cd $_path
sudo pacman -S xorg-xset # needed for caps module
# Install Adwaita dark theme
paru -S adwaita-slim-gtk-theme
# Install powerline font
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
# Install Japanese font
paru ttf-koruri
# Install fish and rust and starship
sudo pacman -S fish rust
cargo install starship
# Use dash as shell
paru -S dashbinsh
echo 'Done Installing'
