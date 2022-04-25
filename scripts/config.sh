#!/bin/bash

#user input for what file you want to configure
echo "What config file would you like to edit: i3 polybar picom"
read command

if [[ ($command == "polybar") ]]; then
nano ~/.config/polybar/config.ini
elif [[ ($command == "picom") ]]; then
nano ~/.config/picom/picom.conf
elif [[ ($command == "i3") ]]; then
nano ~/.config/i3/config
else
echo "That option is not avaliable"

fi
