#!/bin/bash
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
echo "Installing (minimal)"
sudo xbps-install -Suy
sudo xbps-install -Sy void-repo-multilib void-repo-multilib-nonfree void-repo-nonfree
sudo xbps-install -S
sudo xbps-install -Sy xorg i3-gaps dmenu feh compton arc-theme linux-headers polybar vim htop neofetch
# Install st-cody
sudo xbps-install -Sy base-devel fontconfig-devel libX11-devel libXft-devel ncurses st-terminfo
mkdir ~/git
cd ~/git
git clone https://github.com/ocdy1001/st-cody.git
cd $parent_path 
cp std-confs/st-cody-config-std.h ~/git/st-cody/config.h
cd ~/git/st-cody/
make
sudo make install
# Install ZSH, oh-my-zsh, and needed fonts for latter one
sudo xbps-install -Sy -S zsh curl lolcat-c
sh -c "$(curl -fsSL https://raw.githUbusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
echo "Done"
