pgrep redshift &> /dev/null || redshift -l 40.7107979:14.6716687 &> /dev/null &
unclutter -grab & 
xmodmap ~/.config/swap_esc &

exec i3
