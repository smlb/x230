#!/bin/bash

MONITOR=$(xrandr | awk '/HDMI-3/ {print $2}')

if [[ $MONITOR != "connected" ]]; then 
    xrandr --output LVDS-1 --mode 1366x768 
else 
    xrandr --output HDMI-3 --mode 1920x1080 --output LVDS-1 --off
fi
