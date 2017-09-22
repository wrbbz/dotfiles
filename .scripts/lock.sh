#!/bin/bash
setxkbmap us
tmpbg="/tmp/lockscreen.png"
pic="/home/arseny/.wallpaper/lockscreen.png"

scrot "$tmpbg"
convert "$tmpbg" -scale 10% -scale 1000% -fill black -colorize 25% "$tmpbg"

if [ -f "$pic" ]; then
	xrandr | grep VGA | grep -v disconnected && convert "$tmpbg" "$pic" -gravity East -geometry +400+0 -composite -matte "$tmpbg" && convert "$tmpbg" "$pic" -gravity West -geometry +150-150 -composite -matte "$tmpbg"
	xrandr | grep VGA | grep disconnected && convert "$tmpbg" "$pic" -gravity South -geometry +0-50 -composite -matte "$tmpbg"
fi

i3lock -l -n -e -t -i "$tmpbg" >> /dev/null
