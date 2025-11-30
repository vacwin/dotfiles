#!/bin/bash
EXTERNAL="DP-2"
INTERNAL="eDP-1"

if xrnadr | grep "$EXTERNAL connected" > /dev/null; then
  xrandr --output $INTERNAL --off --output $EXTERNAL --auto
  sleep 1
  for i in {1..10}; do
    i3-msg "workspace nubmer $i; move workspace to output $EXTERNAL" 2>dev/null
  done
else
  xrander --output $INTERNAL --auto --output $EXTERNAL --off
fi
