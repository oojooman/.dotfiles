#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

my_laptop_external_monitor=$(xrandr --query | grep 'DP-1')
if [[ $my_laptop_external_monitor = *connected* ]]; then
    polybar external &
fi

# Launch example bar
echo "---" | tee -a /tmp/polybarexample.log
polybar example >>/tmp/polybarexample.log 2>&1 &

echo "Bars launched..."
