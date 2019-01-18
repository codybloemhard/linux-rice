#!/bin/bash
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd $parent_path
sudo chmod +x install-minimal.sh
./install-minimal.sh
sudo chmod +x install-extra.sh
./install-extra.sh
#sudo chmod +x install-specific.sh
#./install-specific.sh
sudo chmod +x config-std.sh
./config-std.sh
#sudo chmod +x config-var-blur.sh
#./config-var-blur.sh
sudo shutdown -r now
echo "Finalized"
sudo shutdown -r now
