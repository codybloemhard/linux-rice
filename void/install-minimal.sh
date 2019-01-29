#!/bin/bash
echo "Installing (minimal)"
sudo xbps-install -Suy
sudo xbps-install -Sy void-repo-multilib void-repo-multilib-nonfree void-repo-nonfree
sudo xbps-install -S
sudo xbps-install -Sy xorg i3-gaps dmenu feh compton arc-theme linux-headers polybar vim htop neofetch curl
# Install ZSH, oh-my-zsh, and needed fonts for latter one
sudo pacman -S zsh curl
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
echo "Done"
