#!/bin/sh

sleep 0.1; [  $(cat /sys/class/leds/input3::capslock/brightness) -eq 1 ] && notify-send "CapsLock" "CapsLock is turned on" && exit
notify-send "CapsLock" "CapsLock is turned off" 
