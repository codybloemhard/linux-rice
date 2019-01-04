#!/bin/bash
echo "Configuring"
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd $parent_path
mkdir ~/.config
mkdir ~/.config/i3
cp std-confs/i3gaps-std.conf ~/.config/i3/config
mkdir ~/.config/terminator
cp blur-confs/terminator-blur.conf ~/.config/terminator/config
cp std-confs/xinit-std.conf ~/.xinitrc
mkdir ~/.config/polybar
cp std-confs/run-poly-std.sh ~/.config/polybar/run-poly.sh
sudo chmod +x ~/.config/polybar/run-poly.sh
cp std-confs/polybar-std.conf ~/.config/polybar/config
mkdir ~/.config/compton
cp blur-confs/compton-blur.conf ~/.config/compton/compton.conf
mkdir ~/img
cp background.jpg ~/img/background.jpg
echo "Done"