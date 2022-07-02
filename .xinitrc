
swhks &
pkexec swhkd &
sudo dns-over-tls &
numlockx &
bingwp &
picom &
xrandr --output DP-0 --mode 1920x1080 --rate 144.00 &
start-pulseaudio-x11 &
bash -c "sleep 2 && setxkbmap -layout 'us,bg(phonetic)' -option 'grp:win_space_toggle'" &


brave-nightly &
st &

xrdb -merge ~/.Xresources
exec start-dwm

