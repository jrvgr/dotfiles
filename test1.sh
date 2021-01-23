rofi_command="rofi -theme theme.rasi
uptime= $(uptime -p | sed -e 's/up //g')

# Options
shutdown=""
reboot=""
lock=""
sleep="⏾"
logout=""

# Variable passed to rofi
options="$shutdown\n$reboot\n$lock\n$sleep\n$logout"

chosen="$(echo -e "$options" | $rofi_command -p "UP - $uptime -dmenu -selected-row 2)"
case $chosen in

$shutdown) loginctl poweroff;;
$reboot) loginctl reboot;;
$lock) betterlockscreen --lock;;
$sleep) mpc -q pause pamixer -t systemctl suspend;;
$logout) bspc -q;;
esac)
