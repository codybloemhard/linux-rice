#!/bin/bash
upd=$(pacman -Qu | wc -l)
echo "Updates: $upd"
