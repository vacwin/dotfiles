if [ "$(uname -s)" = "Linux" ] && [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
  if command -v flatpak >/dev/null 2>&1; then
    export XDG_DATA_DIRS="$(GIO_USE_VFS=local flatpak --print-updated-env 2>/dev/null | sed -n 's/^XDG_DATA_DIRS=//p')"
  fi

  _has_sway=$(command -v sway 2>/dev/null)
  _has_hypr=$(command -v hyprland 2>/dev/null)

  if [ -n "$_has_sway" ] && [ -n "$_has_hypr" ]; then
    echo "1) hyprland  2) sway"
    printf "compositor [1]: "
    read -r _choice
    case "$_choice" in
      2|sway) exec sway ;;
      *)      exec start-hyprland ;;
    esac
  elif [ -n "$_has_sway" ]; then
    exec sway
  elif [ -n "$_has_hypr" ]; then
    exec start-hyprland
  fi
fi
