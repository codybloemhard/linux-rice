#!/bin/bash
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd $parent_path
sudo chmod +x install-programs.sh
./install-programs.sh
sudo chmod +x config.sh
./config.sh
sudo chmod +x config-extra.sh
./config-extra.sh
sudo chmod +x gen-wifi-std.sh
./gen-wifi-std.sh
echo "Finalized"
