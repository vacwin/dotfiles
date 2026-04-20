if [ "$(uname -s)" = "Linux" ] && [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
  if command -v flatpak >/dev/null 2>&1; then
    export XDG_DATA_DIRS="$(GIO_USE_VFS=local flatpak --print-updated-env 2>/dev/null | sed -n 's/^XDG_DATA_DIRS=//p')"
  fi
  exec sway
fi
