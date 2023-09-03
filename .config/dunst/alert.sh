#!/bin/sh
mpv --no-video "$( find /home/omarhanykasban/Nextcloud/HDD/Documents/mp3/Sounds/notification -type f | sort -R | head -n 1 )"
