# PATH
if [ "$(uname -s)" = "Darwin" ]; then
  if [ -x /opt/homebrew/bin/brew ]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
  elif [ -x /usr/local/bin/brew ]; then
    eval "$(/usr/local/bin/brew shellenv)"
  fi
  export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
  export PATH="$HOME/go/bin:$PATH"
  export PATH="$HOME/.terragrunt/bin:$PATH"
fi

export PATH="$HOME/.local/bin:$PATH"

# окружение сессии
export EDITOR='vim'
export VISUAL="$EDITOR"
export TERMINAL='ghostty'

if [ "$(uname -s)" = "Darwin" ]; then
  export NOTES_DIR="$HOME/pd/obsidian-notes"
else
  export NOTES_DIR="$HOME/obsidian-notes"
fi

if [ "$(uname -s)" = "Linux" ]; then
  export MOZ_ENABLE_WAYLAND=1

  if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
    if command -v flatpak >/dev/null 2>&1; then
      export XDG_DATA_DIRS="$(GIO_USE_VFS=local flatpak --print-updated-env 2>/dev/null | sed -n 's/^XDG_DATA_DIRS=//p')"
    fi
    if command -v start-hyprland >/dev/null 2>&1; then
      exec start-hyprland
    fi
  fi
fi
