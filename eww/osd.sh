#!/usr/bin/env bash
set -euo pipefail

export WAYLAND_DISPLAY=wayland-1

TYPE="${1:-}"

case "$TYPE" in
  volume)
    RAW=$(wpctl get-volume @DEFAULT_AUDIO_SINK@)
    VALUE=$(echo "$RAW" | awk '{print int($2*100)}')
    if echo "$RAW" | grep -q MUTED; then
      ICON=""
      LABEL="Muted"
    elif [ "$VALUE" -lt 30 ]; then
      ICON=""
      LABEL="Volume"
    elif [ "$VALUE" -lt 70 ]; then
      ICON=""
      LABEL="Volume"
    else
      ICON=""
      LABEL="Volume"
    fi
    ;;
  brightness)
    VALUE=$(brightnessctl -m | cut -d, -f4 | tr -d %)
    ICON=""
    LABEL="Brightness"
    ;;
  *)
    exit 1
    ;;
esac

eww update osd-icon="$ICON" osd-value="$VALUE" osd-label="$LABEL"

if ! eww active-windows | grep -q osd; then
  eww open osd
fi

# reset auto-close timer
if [ -f /tmp/eww-osd.pid ]; then
  kill "$(cat /tmp/eww-osd.pid)" 2>/dev/null || true
fi
(sleep 2 && eww close osd) &
echo $! > /tmp/eww-osd.pid
