#!/bin/sh

export toggle= $(cat ~/extra/output.txt)

 CURRENT_TEMP=$(redshift -p 2> /dev/null  | grep "Color temperature" | sed 's/.*: //')

 [  $(cat ~/extra/output.txt) = on ] && echo "$CURRENT_TEMP" && exit
echo "off"
