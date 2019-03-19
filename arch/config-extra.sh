#!/bin/bash
echo "Configuring extra"
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd $parent_path
#cmus
cp std-confs/cmusrc-std.conf ~/.config/cmus/rc
cp std-confs/cmus-autosave-std.conf ~/.config/cmus/autosave
#zathura pdf viewer
cp std-confs/zathurarc.conf ~/.config/zathura/zathurarc
