#! /bin/bash
# DATE 获取日期和时间的脚本


DWM="/home/wadekiny/ProgramFiles/dwm-wadekiny"
this=_date
s2d_reset="^d^"
color="^c#2D1B46^^b#335566^"
signal=$(echo "^s$this^" | sed 's/_//')

update() {
    time_text="$(date '+%m/%d %H:%M')"
    case "$(date '+%I')" in
        "01") time_icon="" ;;
        "02") time_icon="" ;;
        "03") time_icon="" ;;
        "04") time_icon="" ;;
        "05") time_icon="" ;;
        "06") time_icon="" ;;
        "07") time_icon="" ;;
        "08") time_icon="" ;;
        "09") time_icon="" ;;
        "10") time_icon="" ;;
        "11") time_icon="" ;;
        "12") time_icon="" ;;
    esac

    text=" $time_icon $time_text "
    sed -i '/^export '$this'=.*$/d' $DWM/statusbar/temp
    printf "export %s='%s%s%s%s'\n" $this "$color" "$signal" "$text" "$s2d_reset" >> $DWM/statusbar/temp
}

click() {
    #notify-send "$(date '+%Y/%m/%d %H:%M')" "\n$(cal | sed 1d)"
    notify-send "$(date '+%Y/%m/%d %H:%M')"  \
                "$(cal |\
                sed 1d |\
                sed 's/_ _1/ <i><u><b>1<\/b><\/u><\/i>/' |\
                sed 's/_ _2/ <i><u><b>2<\/b><\/u><\/i>/' |\
                sed 's/_ _3/ <i><u><b>3<\/b><\/u><\/i>/' |\
                sed 's/_ _4/ <i><u><b>4<\/b><\/u><\/i>/' |\
                sed 's/_ _5/ <i><u><b>5<\/b><\/u><\/i>/' |\
                sed 's/_ _6/ <i><u><b>6<\/b><\/u><\/i>/' |\
                sed 's/_ _7/ <i><u><b>7<\/b><\/u><\/i>/' |\
                sed 's/_ _8/ <i><u><b>8<\/b><\/u><\/i>/' |\
                sed 's/_ _9/ <i><u><b>9<\/b><\/u><\/i>/' |\
                sed 's/_ _10/<i><u><b>10<\/b><\/u><\/i>/' |\
                sed 's/_ _11/<i><u><b>11<\/b><\/u><\/i>/' |\
                sed 's/_ _12/<i><u><b>12<\/b><\/u><\/i>/' |\
                sed 's/_ _13/<i><u><b>13<\/b><\/u><\/i>/' |\
                sed 's/_ _14/<i><u><b>14<\/b><\/u><\/i>/' |\
                sed 's/_ _15/<i><u><b>15<\/b><\/u><\/i>/' |\
                sed 's/_ _16/<i><u><b>16<\/b><\/u><\/i>/' |\
                sed 's/_ _17/<i><u><b>17<\/b><\/u><\/i>/' |\
                sed 's/_ _18/<i><u><b>18<\/b><\/u><\/i>/' |\
                sed 's/_ _19/<i><u><b>19<\/b><\/u><\/i>/' |\
                sed 's/_ _20/<i><u><b>20<\/b><\/u><\/i>/' |\
                sed 's/_ _21/<i><u><b>21<\/b><\/u><\/i>/' |\
                sed 's/_ _22/<i><u><b>22<\/b><\/u><\/i>/' |\
                sed 's/_ _23/<i><u><b>23<\/b><\/u><\/i>/' |\
                sed 's/_ _24/<i><u><b>24<\/b><\/u><\/i>/' |\
                sed 's/_ _25/<i><u><b>25<\/b><\/u><\/i>/' |\
                sed 's/_ _26/<i><u><b>26<\/b><\/u><\/i>/' |\
                sed 's/_ _27/<i><u><b>27<\/b><\/u><\/i>/' |\
                sed 's/_ _28/<i><u><b>28<\/b><\/u><\/i>/' |\
                sed 's/_ _29/<i><u><b>29<\/b><\/u><\/i>/' |\
                sed 's/_ _30/<i><u><b>30<\/b><\/u><\/i>/' |\
                sed 's/_ _31/<i><u><b>31<\/b><\/u><\/i/')"
}

case "$1" in
    click) click $2 ;;
    *) update ;;
esac
