#!/usr/bin/bash
img=(`find ~/Nextcloud/HDD/Pictures/SteavenGamerYT/ -name '*' -exec file {} \; | grep -o -P '^.+: \w+ image' | cut -d':' -f1`)
while true
do
   feh --bg-scale --randomize --no-fehbg "${img[$RANDOM % ${#img[@]} ]}"
sleep 1m
done