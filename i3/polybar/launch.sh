#!/usr/bin/env bash
killall -q polybar
while pgrep -x polybar >/dev/null; do sleep 0.2; done

if command -v xrandr >/dev/null; then
  for m in $(polybar -m | cut -d: -f1); do
    MONITOR="$m" polybar main -r &
  done
else
  polybar main -r &
fi
