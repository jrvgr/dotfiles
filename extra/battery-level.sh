#!/bin/bash
battery_level=$(</sys/class/power_supply/BAT0/capacity);

if [ $battery_level -le 15 ]; then
	[ -e /dev/shm/battnotif ] || notify-send "Battery low" "Battery level is ${battery_level}%!" && touch /dev/shm/battnotif;
else
	[ -e /dev/shm/battnotif ] && rm /dev/shm/battnotif; 
fi
