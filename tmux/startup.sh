#!/bin/bash

tmux has-session -t main 2>/dev/null && exit 0

tmux new-session -d -s main -n work
tmux new-window -t main -n repos
tmux new-window -t main -n claude
tmux new-window -t main -n home
tmux attach -t main
