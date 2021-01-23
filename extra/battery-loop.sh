#!/bin/sh
while true; do
   sh /home/viriv/extra/battery-level.sh
   sleep 30s    # Update time every minute
done &
