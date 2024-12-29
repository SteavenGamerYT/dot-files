#!/bin/bash

# Change Headset profile to the proper one
pactl set-card-profile alsa_card.usb-XiiSound_Technology_Corporation_H848_Wireless_headset-00 output:iec958-stereo+input:mono-fallback
pactl set-card-profile alsa_card.usb-XiiSound_Technology_Corporation_H848_USB_Gaming_Headset-00 output:iec958-stereo+input:mono-fallback

# Change Headset pcm to 100%
amixer -c headset set PCM 100%
amixer -c headset set PCM,1 100%
amixer -c Headset set PCM 100%
amixer -c Headset set PCM,1 100%
