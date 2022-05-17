#!/bin/sh
sudo unlink /etc/localtime
sudo ln -s /usr/share/zoneinfo/Europe/Amsterdam /etc/localtime
sudo ntpd -qg
sudo hwclock -w
