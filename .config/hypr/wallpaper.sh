#!/usr/bin/bash
img=(`find ~/Pictures/nord-background/ -name '*' -exec file {} \; | grep -o -P '^.+: \w+ image' | cut -d':' -f1`)
while true
do
   swaybg -m fill -i "${img[$RANDOM % ${#img[@]} ]}"
sleep 10m
done
