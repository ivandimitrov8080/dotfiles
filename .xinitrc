bash -c "sleep 1 && sudo session-setup" &

xrdb -merge "$HOME/.Xresources"
exec start-dwm

