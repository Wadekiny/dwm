#! /bin/bash
# df 获取磁盘空间


DWM="/home/wadekiny/ProgramFiles/dwm-wadekiny"
this=_df
s2d_reset="^d^"
color="^c#221188^^b#334466^"
signal=$(echo "^s$this^" | sed 's/_//')

update() {
    df_icon=""
    root_text=$(df -hl / | grep / | awk '{printf "/:%s", $4}')  
    home_text=$(df -hl /home | grep home | awk '{printf "/home:%s", $4}')  

    #text=" $df_icon $root_text $home_text "
    text=" $df_icon $root_text "
    sed -i '/^export '$this'=.*$/d' $DWM/statusbar/temp
    printf "export %s='%s%s%s%s'\n" $this "$color" "$signal" "$text" "$s2d_reset" >> $DWM/statusbar/temp
}

click() {
    case "$1" in
        L) ;;
        M) floatst btop 82 25 ;;
        R) floatst btop 82 25 ;;
    esac
}

case "$1" in
    click) click $2 ;;
    *) update ;;
esac

