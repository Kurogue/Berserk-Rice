#!/bin/bash

#user input so they can check the status of their battery
echo "Enter a choice: bat or stat"
read command

#grabs the first character of the user input
subStr=${command:0:1}

#checks the user input to print the respective battery status
if [[ ($subStr == "b") ]]; then
echo $(cat /sys/class/power_supply/BAT1/capacity)
elif [[ ($subStr == "s") ]]; then
echo $(cat /sys/class/power_supply/BAT1/status)
fi
