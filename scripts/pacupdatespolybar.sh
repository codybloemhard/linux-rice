#!/bin/bash
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd $parent_path
upd=$(exec python pacupd.py)
echo "Updates: $upd"
