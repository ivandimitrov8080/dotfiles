dunst &
dwmblocks &
sxhkd &
bingwp &
picom &
xrandr --output DP-0 --mode 1920x1080 --rate 144.00 &
setxkbmap -layout 'us,bg(phonetic)' -option 'grp:win_space_toggle' &
audioman restart &

brave-nightly &
st &

xrdb -merge "$HOME/.Xresources"
exec dwm

