#!/bin/bash
echo "Installing (minimal)"
_path=$( pwd )
sudo pacman -Syyu --noconfirm
sudo pacman -Sy --noconfirm xorg-server xorg-xinit xorg-xrandr i3-gaps i3status feh picom linux-headers nvidia htop neofetch exa neovim
sudo pacman -Sy --noconfirm iw #networkmanager
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
# install yay
git clone https://aur.archlinux.org/yay.git --depth=1
cd yay
makepkg -si
cd ..
rm -rf yay
# install better lolcat
yay -S c-lolcat
# Install Shapebar
cd ~/git
git clone https://github.com/ocdy1001/shapebar
cd shapebar
sudo make install
cd $_path
# Install Adwaita dark theme
yay -S adwaita-slim-gtk-theme
# Install fish and rust and starship and needed fonts for latter one
sudo pacman -S fish rust
cargo install starship
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
echo "Done"
