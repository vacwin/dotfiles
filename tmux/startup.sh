#!/bin/bash

NOTES="${NOTES_DIR:-$HOME/obsidian-notes}"

if tmux has-session -t main 2>/dev/null; then
  tmux attach -t main
else
  tmux new-session -d -s main -n work
  tmux new-window -t main -n repos -c ~/dotfiles
  tmux split-window -t main:repos -h -c "$NOTES"
  tmux new-window -t main -n home
  tmux attach -t main
fi
