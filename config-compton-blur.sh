#!/bin/bash
echo "Configuring compton (blur)"
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd $parent_path
mkdir ~/.config/compton
cp compton-confs/compton-blur.conf ~/.config/compton/compton.conf
echo "Done"