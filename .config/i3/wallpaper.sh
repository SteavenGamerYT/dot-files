#!/usr/bin/bash
img=(`find ~/Pictures/nord-background -name '*' -exec file {} \; | grep -o -P '^.+: \w+ image' | cut -d':' -f1`)
while true
do
   feh --bg-scale --randomize --no-fehbg "${img[$RANDOM % ${#img[@]} ]}"
sleep 10m
done
