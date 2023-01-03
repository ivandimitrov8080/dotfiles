parallel -j0 ::: .config/autostart/* &

xrdb -merge "$HOME/.Xresources"
exec dwm

