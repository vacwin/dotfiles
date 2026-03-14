#!/usr/bin/env bash
set -eu

DOTFILES="$(cd "$(dirname "$0")" && pwd)"
OS="$(uname -s)"

link() {
  local src="$DOTFILES/$1"
  local dst="$2"
  mkdir -p "$(dirname "$dst")"
  ln -sf "$src" "$dst"
  echo "linked $dst"
}

# zsh
link zsh "$HOME/.config/zsh"

# git
link git/.gitconfig "$HOME/.gitconfig"

# ghostty
link ghostty "$HOME/.config/ghostty"

# scripts
link scripts/copy "$HOME/.local/bin/copy"
chmod +x "$DOTFILES/scripts/copy"

link scripts/copy "$HOME/.local/bin/paste"
chmod +x "$DOTFILES/scripts/paste"

# OS-specific
if [[ "$OS" == "Linux" ]]; then
  link sway "$HOME/.config/sway"
fi
