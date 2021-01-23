#!/bin/bash

output="$(echo -e "sleep\nshutdown\nrestart\nhibernate\nlog off" | dmenu)"

case $output in
   "sleep") loginctl suspend;;
   "hibernate") echo on >  /home/viriv/extra/output.txt && loginctl hibernate;;
   "shutdown") echo on >  /home/viriv/extra/output.txt && loginctl poweroff;;
   "log off")  echo on >  /home/viriv/extra/output.txt && bspc quit;;
   "restart")echo on >  /home/viriv/extra/output.txt && loginctl reboot;;
esac
