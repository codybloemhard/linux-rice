#!/bin/bash
exec checkupdates &
upd=$(pacman -Qu | wc -l)
echo "Updates: $upd"
