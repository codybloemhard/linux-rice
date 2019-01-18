#!/bin/bash
echo "Configuring"
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd $parent_path
# xorg
mkdir ~/.config
cp std-confs/xinit-std.conf ~/.xinitrc
# i3
mkdir ~/.config/i3
cp std-confs/i3gaps-std.conf ~/.config/i3/config
# polybar
mkdir ~/.config/polybar
cp std-confs/run-poly-std.sh ~/.config/polybar/run-poly.sh
sudo chmod +x ~/.config/polybar/run-poly.sh
cp std-confs/polybar-std.conf ~/.config/polybar/config
# gtk theme
mkdir ~/.config/gtk-3.0
cp std-confs/gtk-std.css ~/.config/gtk-3.0/gtk.css
cp std-confs/gtk-settings-std.ini ~/.config/gtk-3.0/settings.ini
# compton
mkdir ~/.config/compton
cp std-confs/compton-std.conf ~/.config/compton/compton.conf
# terminator
mkdir ~/.config/terminator
cp std-confs/terminator-std.conf ~/.config/terminator/config
# neofetch
mkdir ~/.config/neofetch
cp std-confs/neofetch.conf ~/.config/neofetch/config.conf
# zsh/bash
cp std-confs/zshrc-std.conf ~/.zshrc
cp std-confs/cody-std.zsh-theme ~/.oh-my-zsh/themes/cody.zsh-theme
chsh -s $(which zsh)
cp std-confs/bashrc.conf ~/.bashrc
# vim
cp std-confs/vim-std.conf ~/.vimrc
# background
mkdir ~/img
cp background.jpg ~/img/background.jpg
echo "Done"
