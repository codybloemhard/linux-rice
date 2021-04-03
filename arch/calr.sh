#!/bin/sh
sudo chmod +x install-programs.sh
./install-programs.sh
sudo chmod +x config.sh
./config.sh
sudo chmod +x config-extra.sh
./config-extra.sh
sudo chmod +x gen-wifi-std.sh
./gen-wifi-std.sh
echo "Finalized"
