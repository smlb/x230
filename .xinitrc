pgrep redshift &> /dev/null || redshift -l &> /dev/null &
xmodmap ~/.config/swap_esc &

if [[ $(xrandr | awk '/HDMI-3/ {print $2}') == "connected" ]]; then 
    xrandr --output HDMI-3 --mode 1920x1080 --output LVDS-1 --off 
    exec i3
else
    exec i3
fi
