#! /bin/bash
# sudo systemctl start todeskd.service

nm-tray &
flameshot &
setxkbmap -option "caps:swapescape"
dunst &
fcitx5 -d &
/home/wadekiny/ProgramFiles/picom/build/src/picom &
feh --bg-fill ~/Pictures/background/bg0.jpg  &
bash /home/wadekiny/ProgramFiles/dwm-wadekiny/statusbar/statusbar.sh cron &
bash /home/wadekiny/Scripts/tap2click.sh &
bash /home/wadekiny/Scripts/inverse-scroll.sh &
#bash /home/wadekiny/Scripts/xmodmap/esc2capslock.sh &
#python3 /home/wadekiny/Scripts/wallpic.py &
#nm-applet &
#picom -b &
#/home/wadekiny/ProgramFiles/picom-wadekiny/build/src/picom --experimental-backends &
