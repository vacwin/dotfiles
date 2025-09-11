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

# 2. Симлинк ~/.vim
if [ -d "$HOME/.vim" ] || [ -L "$HOME/.vim" ]; then
  echo "Бэкапим существующий ~/.vim -> ~/.vim.backup"
  mv "$HOME/.vim" "$HOME/.vim.backup.$(date +%s)"
fi
ln -s "$ROOT" "$HOME/.vim"
echo "Симлинк ~/.vim -> $ROOT"

# 3. Установка vim-plug
if [ ! -f "$ROOT/autoload/plug.vim" ]; then
  echo "Скачиваем vim-plug..."
  curl -fLo "$ROOT/autoload/plug.vim" --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

# 4. Установка плагинов
echo "===> Устанавливаем плагины..."
vim +PlugInstall +qall

# 5. Симлинк для темы base16-black-metal-gorgoroth
THEME_SRC="$ROOT/plugged/colors.vim/base16-black-metal-gorgoroth.vim"
THEME_DST="$ROOT/colors/base16-black-metal-gorgoroth.vim"

if [ -f "$THEME_SRC" ] && [ ! -e "$THEME_DST" ]; then
  echo "Ставим симлинк для темы base16-black-metal-gorgoroth..."
  ln -s "$THEME_SRC" "$THEME_DST"
fi

echo "===> Готово! Запускай Vim и смотри цвета."
