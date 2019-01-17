#!/bin/bash
echo "Configuring"
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd $parent_path
mkdir ~/.config
cp std-confs/xinit-std.conf ~/.xinitrc
mkdir ~/.config/i3
cp std-confs/i3gaps-std.conf ~/.config/i3/config
mkdir ~/.config/polybar
cp std-confs/run-poly-std.sh ~/.config/polybar/run-poly.sh
sudo chmod +x ~/.config/polybar/run-poly.sh
cp std-confs/polybar-std.conf ~/.config/polybar/config
mkdir ~/.config/gtk-3.0
cp std-confs/gtk-std.css ~/.config/gtk-3.0/gtk.css
cp std-confs/gtk-settings-std.ini ~/.config/gtk-3.0/settings.ini
mkdir ~/.config/compton
cp std-confs/compton-std.conf ~/.config/compton/compton.conf
mkdir ~/.config/terminator
cp std-confs/terminator-std.conf ~/.config/terminator/config
mkdir ~/.config/neofetch
cp std-confs/neofetch.conf ~/.config/neofetch/config.conf
cp std-confs/zshrc-std.conf ~/.zshrc
cp std-confs/cody-std.zsh-theme ~/.oh-my-zsh/themes/cody.zsh-theme
cp std-confs/vim-std.conf ~/.vimrc
cp std-confs/bashrc.conf ~/.bashrc
mkdir ~/img
cp background.jpg ~/img/background.jpg
echo "Done"
