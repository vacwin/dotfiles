#!/usr/bin/env bash
set -eu

DOTFILES="$(cd "$(dirname "$0")" && pwd)"
OS="$(uname -s)"

link() {
  local src="$DOTFILES/$1"
  local dst="$2"
  mkdir -p "$(dirname "$dst")"
  if [[ -L "$dst" || -e "$dst" ]]; then
    rm -rf "$dst"
  fi
  ln -sfn "$src" "$dst"
  echo "linked $dst"
}

link zsh "$HOME/.config/zsh"
link zsh/.zshenv "$HOME/.zshenv"

[[ -L "$HOME/.gitconfig" || -e "$HOME/.gitconfig" ]] && rm -f "$HOME/.gitconfig"
link git "$HOME/.config/git"

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

link vim "$HOME/.config/vim"

# tmux
[[ -L "$HOME/.tmux.conf" ]] && rm "$HOME/.tmux.conf"
link tmux/tmux.conf "$HOME/.config/tmux/tmux.conf"
if [[ ! -d "$HOME/.config/tmux/plugins/tpm" ]]; then
  git clone https://github.com/tmux-plugins/tpm "$HOME/.config/tmux/plugins/tpm"
fi

# scripts (the rest are called by path from hypr/waybar configs)
for s in copy paste ansible_decrypt cava-waybar convert-audio; do
  link "scripts/$s" "$HOME/.local/bin/$s"
  chmod +x "$DOTFILES/scripts/$s"
done

# OS-specific
if [[ "$OS" == "Linux" ]]; then
  mkdir -p "$HOME/.config/tofi"
  ln -sf "$DOTFILES/tofi/config" "$HOME/.config/tofi/config"
  mkdir -p "$HOME/.config/hypr"
  echo "source = $DOTFILES/hypr/hyprland.conf" > "$HOME/.config/hypr/hyprland.conf"
  ln -sfn "$DOTFILES/hypr/conf.d" "$HOME/.config/hypr/conf.d"
  ln -sfn "$DOTFILES/hyprlock/hyprlock.conf" "$HOME/.config/hypr/hyprlock.conf"
  ln -sfn "$DOTFILES/hypr/hypridle.conf" "$HOME/.config/hypr/hypridle.conf"
  ln -sfn "$DOTFILES/hypr/hyprsunset.conf" "$HOME/.config/hypr/hyprsunset.conf"
  link waybar "$HOME/.config/waybar"
  link swaync "$HOME/.config/swaync"
  link cava "$HOME/.config/cava"
fi
