echo "Config extra stuff"
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd $parent_path
#wifi scripts
#sudo cp other/edu-wpa /etc/wpa_supplicant/edu-wpa
#sudo cp other/home-wpa /etc/wpa_supplicant/home-wpa
mkdir ~/scripts
#cp scripts/wifi-eduroam ~/scripts/wifi-eduroam
#cp scripts/wifi-home ~/scripts/wifi-home
#zathura config (dark theme pdf)
cp std-confs/zathurarc.conf ~/.config/zathura/zathurarc
