#!/usr/bin/env bash
set -e
# корень конфигов
ROOT="$(cd "$(dirname "$0")" && pwd)"
echo "===> Установка Vim-конфига из $ROOT"
# 1. Симлинк ~/.vimrc
if [ -f "$HOME/.vimrc" ] || [ -L "$HOME/.vimrc" ]; then
  echo "Бэкапим существующий .vimrc -> .vimrc.backup"
  mv "$HOME/.vimrc" "$HOME/.vimrc.backup.$(date +%s)"
fi
ln -s "$ROOT/vimrc" "$HOME/.vimrc"
echo "Симлинк ~/.vimrc -> $ROOT/vimrc"
# 2. Симлинк ~/.config/nvim
mkdir -p "$HOME/.config"
if [ -d "$HOME/.config/nvim" ] || [ -L "$HOME/.config/nvim" ]; then
  echo "Бэкапим существующий ~/.config/nvim"
  mv "$HOME/.config/nvim" "$HOME/.config/nvim.backup.$(date +%s)"
fi
ln -s "$ROOT" "$HOME/.config/nvim"
echo "Симлинк ~/.config/nvim -> $ROOT"
# 3. Симлинк init.vim внутри dotfiles
if [ ! -e "$ROOT/init.vim" ]; then
  ln -s "$ROOT/vimrc" "$ROOT/init.vim"
  echo "Симлинк $ROOT/init.vim -> $ROOT/vimrc"
fi
# 4. Установка vim-plug
if [ ! -f "$ROOT/autoload/plug.vim" ]; then
  echo "Скачиваем vim-plug..."
  curl -fLo "$ROOT/autoload/plug.vim" --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi
# 5. Установка плагинов
echo "===> Устанавливаем плагины..."
nvim +PlugInstall +qall
# 6. Симлинки для всех base16-black-metal тем
echo "Ставим симлинки для всех black-metal тем..."
for THEME_SRC in "$ROOT/plugged/colors.vim"/base16-black-metal*.vim; do
  THEME_NAME="$(basename "$THEME_SRC")"
  THEME_DST="$ROOT/colors/$THEME_NAME"
  if [ -f "$THEME_SRC" ] && [ ! -e "$THEME_DST" ]; then
    ln -s "$THEME_SRC" "$THEME_DST"
    echo "  -> $THEME_NAME"
  fi
done
echo "===> Готово! Запускай Vim и смотри цвета."
