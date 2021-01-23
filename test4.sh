#!/bin/sh

per=`acpi -b | grep -o -P '[0-9]+(?=%)'`
ac=$(acpi -b|grep -c "Charging")    


if [ $per = 15 && $ac -eq 0 ] ; then
notify-send -t 15000 "Battery $per%" "please charge now" 

fi

if [ $per = 5 && $ac -eq 0 ] ; then
notify-send -t 15000 "Battery $per%" "plug in charger or laptop will hibernate"  

fi

if [ $per = 3 &&  $ac -eq 0 ] ; then
notify-send -t 15000 "Battery $per%" "hibernating" && systemctl hibernate

fi


