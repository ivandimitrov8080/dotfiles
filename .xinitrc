
bash -c "sleep 1 && sudo session-setup" &

xrdb -merge ~/.Xresources
exec start-dwm

