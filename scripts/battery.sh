#!/bin/bash

level=$(cat /sys/class/power_supply/BAT1/capacity)
state=$(cat /sys/class/power_supply/BAT1/status)

low_threshold=25

if [ "$level" -lt $low_threshold ] && [[ $state = *Discharging* ]]; then
        dunstify -u normal -a "Battery Level" "bat" "The battery level is below 25 percent. Will sleep soon."
fi
