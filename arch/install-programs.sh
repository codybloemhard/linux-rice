#!/bin/sh
echo "Installing (minimal)"
_path=$( pwd )
# Sync and update
sudo pacman -Syyu --noconfirm
# Xorg and essentials
sudo pacman -Sy --noconfirm xorg-server xorg-xinit xorg-xrandr i3-gaps i3status feh picom linux-headers nvidia htop neovim
# Network
sudo pacman -Sy --noconfirm iw #networkmanager
# Dev
sudo pacman -Sy --noconfirm base-devel pacman-contrib
sudo ../neovim/install.sh
# install neovim things
../neovim/install.sh
# install st fork
mkdir ~/git
cd ~/git
git clone https://github.com/ocdy1001/st-cody.git
cd st-cody
sudo make install
cd $_path
# install dmenu fork
cd ~/git
git clone https://github.com/ocdy1001/dmenu-cody.git --depth=1
cd dmenu-cody
./build
cd $_path
# install aur helper (paru)
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git --depth=1
cd paru
makepkg -si
cd ..
rm -rf paru
# install better lolcat
paru -S c-lolcat
# Install Shapebar
cd ~/git
git clone https://github.com/ocdy1001/shapebar
cd shapebar
sudo make install
cd $_path
sudo pacman -Sy xorg-xset # needed for caps module
# Install Adwaita dark theme
paru -S adwaita-slim-gtk-theme
# Install fish and rust and starship and needed fonts for latter one
sudo pacman -S fish rust
cargo install starship
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
# Use dash as shell
paru -S dashbinsh
# Utilities
sudo pacman -Sy --noconfirm neofetch exa scrot alsa-firmware alsa-utils firefox sl unzip zip slock pulseaudio the_silver_searcher fzf xclip bat
echo "Done"
