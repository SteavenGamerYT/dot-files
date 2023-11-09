#!/usr/bin/bash
img=(`find ~/Documents/GitHub/nord-background/ -name '*' -exec file {} \; | grep -o -P '^.+: \w+ image' | cut -d':' -f1`)
while true
do
   feh --bg-scale --randomize --no-fehbg "${img[$RANDOM % ${#img[@]} ]}"
sleep 1m
done
