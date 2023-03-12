#!/bin/sh
_path=$( pwd )
# Sync and update
doas pacman --noconfirm -Syyu
doas pacman --noconfirm -S artix-archlinux-support
doas cp confs/pacman.conf /etc/pacman.conf
doas pacman --noconfirm -Sy
# Xorg and essentials
doas pacman -S --noconfirm xorg-server xorg-xinit xorg-xrandr xorg-xrdb xdg-utils cmake i3-gaps feh picom linux-headers nvidia btop neovim firefox
# Utilities
doas pacman -S --noconfirm neofetch exa scrot alsa-firmware alsa-utils unzip zip slock pulseaudio the_silver_searcher fzf xclip bat ntp dust
# Network
doas pacman -S --noconfirm iw wpa_supplicant #
# Dev
doas pacman -S --noconfirm pacman-contrib
doas ../neovim/install.sh
# Install neovim things
../neovim/install.sh
# Install st fork
mkdir ~/git
cd ~/git
git clone https://gitlab.com/codybloemhard/st-cody.git
cd st-cody
doas make install
cd $_path
# Install dmenu fork
cd ~/git
git clone https://gitlab.com/codybloemhard/dmenu-cody.git --depth=1
cd dmenu-cody
./build
cd $_path
# Install aur helper (paru)
doas pacman -S base-devel
git clone https://aur.archlinux.org/paru.git --depth=1
cd paru
makepkg -si
cd ..
rm -rf paru
doas pacman -Rns base-devel
# Install Shapebar
cd ~/git
git clone https://gitlab.com/codybloemhard/shapebar
cd shapebar
doas make install
cd $_path
doas pacman -S xorg-xset # needed for caps module
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
doas pacman -S fish rust
cargo install starship
# Use dash as shell
paru -S dashbinsh
echo 'Done Installing'
