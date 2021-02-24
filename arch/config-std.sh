#!/bin/bash
echo "Configuring"
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd $parent_path
sudo cp std-confs/pacman.conf /etc/pacman.conf
# scripts folder
cp -frT ../scripts ~/scripts
mkdir ~/scripts/.sfiles
echo "echo \"HENLO, THIS IS TEST SCRIPT. NICE TO MEET YOU.\"" > ~/scripts/test.sh
chmod +x ~/scripts/test.sh
# xorg
mkdir ~/.config
cp std-confs/.xinitrc ~/.xinitrc
# i3
mkdir ~/.config/i3
cp std-confs/i3gaps-std.conf ~/.config/i3/config
# shapebar
cp ~/git/shapebar/run-shapebar ~/scripts/run-shapebar
cp ~/git/shapebar/shapebar-conf ~/scripts/shapebar-conf
cp -r ~/git/shapebar/modules ~/scripts/
# gtk theme
mkdir ~/.config/gtk-3.0
cp std-confs/gtk-gtk3.css ~/.config/gtk-3.0/gtk.css
cp std-confs/settings-gtk3.ini ~/.config/gtk-3.0/settings.ini
mkdir ~/.config/gtk-2.0
cp std-confs/gtkfilechooser-gtk2.ini ~/.config/gtk-2.0/gtkfilechooser.ini
cp std-confs/settings-gtk2.ini ~/.config/gtk-2.0/settings.ini
# picom
mkdir ~/.config/picom
cp std-confs/picom-std.conf ~/.config/picom/picom.conf
# fish
chsh -s $(which fish)
cp std-confs/starship.toml ~/.config/
cp std-confs/config.fish ~/.config/fish/
# to select right audio device(smsl m3 dac for me)
cp std-confs/asoundrc-std.conf ~/.asoundrc
# profile
cp std-confs/profile-std.conf ~/.profile
# background
mkdir ~/img
cp background.jpg ~/img/background.jpg
echo "Done"
