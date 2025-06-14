#!/usr/bin/env bash

WATTS=$(sensors | awk '/SVI2_P_Core:/ { print $2; exit }')
echo "󰚥 ${WATTS}W"