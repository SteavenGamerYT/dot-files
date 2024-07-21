#!/usr/bin/bash
img=(`find /mnt/hdd/Pictures/SteavenGamerYT2 -name '*' -exec file {} \; | grep -o -P '^.+: \w+ image' | cut -d':' -f1`)
while true
do
   feh --bg-scale --randomize --no-fehbg "${img[$RANDOM % ${#img[@]} ]}"
sleep 10m
done
