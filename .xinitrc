#!/bin/sh

# dwmstatus 2>&1 >/dev/null &
# slstatus &
xrdb -merge -load ~/.Xresources &
# /home/winterbreeze/Build/dwm-bar/dwm_bar.sh &
setxkbmap -option caps:escape &
xrandr --output eDP1 --mode 2560x1600 --scale 0.75x0.75 &
# xwallpaper --zoom ~/Downloads/sup.jpg
xwallpaper --zoom ~/Desktop/new.jpg
[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap
# export XDG_SESSION_TYPE=x11
# export GDK_BACKEND=x11
# exec gnome-session
# picom -f &
exec dwm
