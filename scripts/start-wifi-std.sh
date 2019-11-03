killall wpa_supplicant
wpa_supplicant -B -i wlp6s0 -c /etc/wpa_supplicant/wpa_supp-std.conf
sudo dhcpcd wlp6s0
