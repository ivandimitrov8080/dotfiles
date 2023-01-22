autostart_dir=$(xdg-user-dir AUTOSTART)
parallel -j0 ::: ${autostart_dir}/* &
echo $! > "${autostart_dir}/autostart.pid"

xrdb -merge "$HOME/.Xresources"
exec dwm

