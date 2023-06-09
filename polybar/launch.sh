#!/usr/bin/env bash

MONITOR="eDP"
# Terminate already running bar instances
# killall -q polybar
pkill polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

if type "xrandr"; then
  for m in $(polybar --list-monitors | grep -v $MONITOR | cut -d":" -f1); do
    MONITOR=$m polybar --reload b-window &
  done
fi

# Launch main screen bars
polybar b0 &
polybar b1 &

echo "Bars launched..."
