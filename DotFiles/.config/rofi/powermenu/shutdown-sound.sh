#!/usr/bin/env bash


beep -f 880 -l 100   # A5
beep -f 1046 -l 100  # C6
beep -f 1318 -l 300  # E6
beep -f 988  -l 200  # B5
beep -f 880  -l 200  # A5

mpv --config-dir=/dev/null --no-video --no-resume-playback ~/Audio/mp3/Sounds/sonic-shutdown.m4a