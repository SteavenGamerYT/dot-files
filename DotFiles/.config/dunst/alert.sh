#!/bin/sh
mpv --no-video "$( find ~/Audio/mp3/Sounds/notification -type f | sort -R | head -n 1 )"