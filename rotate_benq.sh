orientation=$1
if [ $orientation == "v" ]
then
    swaymsg -- output DP-3 pos 0 0  transform 270
    swaymsg -- output DP-4 pos 1440 800
elif [ $orientation == "h" ]
then
    swaymsg -- output DP-3 pos 0 0  transform 0
    swaymsg -- output DP-4 pos 2560 0
fi
