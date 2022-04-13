xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto
pulseaudio -v >> /var/log/pulseaudio.log
/home/ivand/.scripts/dwmsetroot &
exec dwm

