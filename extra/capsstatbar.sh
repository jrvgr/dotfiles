[  $(cat /sys/class/leds/input3::capslock/brightness) -eq 1 ] && echo %{B#f73509} "On " && exit
echo %{F#80cda4} Off
