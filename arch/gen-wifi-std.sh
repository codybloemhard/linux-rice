#!/bin/bash
echo "generate std wifi wpa supplicant file"
echo "interfaces: "
sudo ip link show
echo -e "enter interface(type full name): "
read inter
echo "networks(ssid's): "
sudo iw dev $inter scan | grep -i ssid
echo -e "pick a ssid: "
read ssid
echo -e "type password for ssid: "
read key
echo "generating file in etc/wpa_supplicant."
sudo sh -c "rm /etc/wpa_supplicant/wpa_supp-std.conf"
sudo sh -c "wpa_passphrase $ssid "$key" >> /etc/wpa_supplicant/wpa_supp-std.conf"
rm ~/scripts/start-wifi-std.sh
echo "killall wpa_applicant" >> ~/scripts/start-wifi-std.sh
echo "wpa_supplicant -B -i $inter -c /etc/wpa_supplicant/wpa_supp-std.conf" >> ~/scripts/start-wifi-std.sh
echo "sudo dhcpcd $inter" >> ~/scripts/start-wifi-std.sh
sudo chmod +x ~/scripts/start-wifi-std.sh
echo "done."
