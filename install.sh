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
link zsh/.zshenv "$HOME/.zshenv"
link zsh/.zprofile "$HOME/.zprofile"

# git
link git/.gitconfig "$HOME/.gitconfig"

# ghostty — Ghostty owns ~/.config/ghostty, so link individual files
# Remove old full-dir symlink if present (re-running ln -sf into a symlinked dir creates self-refs)
[[ -L "$HOME/.config/ghostty" ]] && rm "$HOME/.config/ghostty"
mkdir -p "$HOME/.config/ghostty"
ln -sfn "$DOTFILES/ghostty/config" "$HOME/.config/ghostty/config"
ln -sfn "$DOTFILES/ghostty/config.d" "$HOME/.config/ghostty/config.d"
ln -sfn "$DOTFILES/ghostty/themes" "$HOME/.config/ghostty/themes"
SHADERS_DIR="$DOTFILES/ghostty/shaders"
if [[ ! -d "$SHADERS_DIR" ]]; then
  git clone https://github.com/sahaj-b/ghostty-cursor-shaders "$SHADERS_DIR"
else
  git -C "$SHADERS_DIR" pull --ff-only
fi

# tmux
link tmux/tmux.conf "$HOME/.tmux.conf"
if [[ ! -d "$HOME/.tmux/plugins/tpm" ]]; then
  git clone https://github.com/tmux-plugins/tpm "$HOME/.tmux/plugins/tpm"
fi

# scripts
link scripts/copy "$HOME/.local/bin/copy"
chmod +x "$DOTFILES/scripts/copy"

link scripts/paste "$HOME/.local/bin/paste"
chmod +x "$DOTFILES/scripts/paste"

link scripts/ansible_decrypt "$HOME/.local/bin/ansible_decrypt"
chmod +x "$DOTFILES/scripts/ansible_decrypt"

# OS-specific
if [[ "$OS" == "Linux" ]]; then
  link sway "$HOME/.config/sway"
  mkdir -p "$HOME/.config/tofi"
  ln -sf "$DOTFILES/sway/tofi/config" "$HOME/.config/tofi/config"
  # Hyprland owns ~/.config/hypr, so we source our config from dotfiles instead of symlinking the dir
  mkdir -p "$HOME/.config/hypr"
  echo "source = $DOTFILES/hypr/hyprland.conf" > "$HOME/.config/hypr/hyprland.conf"
  link waybar "$HOME/.config/waybar"
  link eww "$HOME/.config/eww"
  chmod +x "$DOTFILES/eww/osd.sh"
fi
