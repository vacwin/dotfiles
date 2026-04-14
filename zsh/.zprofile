if [ "$(uname -s)" = "Linux" ] && [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
  exec sway
fi
