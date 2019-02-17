#!/bin/bash
echo "Configuring extra"
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd $parent_path
#cmus
cp std-confs/cmusrc-std.conf ~/.config/cmus/rc
