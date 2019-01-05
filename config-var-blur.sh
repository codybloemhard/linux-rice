#!/bin/bash
echo "Configuring"
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd $parent_path
mkdir ~/.config/terminator
cp blur-confs/terminator-blur.conf ~/.config/terminator/config
mkdir ~/.config/compton
cp blur-confs/compton-blur.conf ~/.config/compton/compton.conf
echo "Done"