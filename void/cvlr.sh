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
chmod +x config-extra.sh
./config-extra.sh
echo "Finalized"
