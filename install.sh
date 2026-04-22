#!/usr/bin/env bash
set -eu

DOTFILES="$(cd "$(dirname "$0")" && pwd)"
OS="$(uname -s)"

link() {
  local src="$DOTFILES/$1"
  local dst="$2"
  mkdir -p "$(dirname "$dst")"
  ln -sfn "$src" "$dst"
  echo "linked $dst"
}

# zsh
link zsh "$HOME/.config/zsh"

# git
link git/.gitconfig "$HOME/.gitconfig"

# ghostty
link ghostty "$HOME/.config/ghostty"
SHADERS_DIR="$DOTFILES/ghostty/shaders"
if [[ ! -d "$SHADERS_DIR" ]]; then
  git clone https://github.com/sahaj-b/ghostty-cursor-shaders "$SHADERS_DIR"
else
  git -C "$SHADERS_DIR" pull --ff-only
fi

# scripts
link scripts/copy "$HOME/.local/bin/copy"
chmod +x "$DOTFILES/scripts/copy"

link scripts/paste "$HOME/.local/bin/paste"
chmod +x "$DOTFILES/scripts/paste"

# OS-specific
if [[ "$OS" == "Linux" ]]; then
  link sway "$HOME/.config/sway"
  link eww "$HOME/.config/eww"
  chmod +x "$DOTFILES/eww/osd.sh"
fi
