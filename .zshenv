. "$HOME/.cargo/env"
. "$HOME/bin/env"

if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi

