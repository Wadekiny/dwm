#! /bin/bash
#picom -b &
/home/wadekiny/ProgramFiles/picom-wadekiny/build/src/picom --experimental-backends &
feh --bg-fill ~/Pictures/background/background.png  &
bash /home/wadekiny/ProgramFiles/dwm-wadekiny/statusbar/statusbar.sh cron &
bash /home/wadekiny/scripts/tap2click.sh &
bash /home/wadekiny/scripts/inverse-scroll.sh &
python3 /home/wadekiny/scripts/wallpic.py &
nm-applet &
