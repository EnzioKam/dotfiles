#!/usr/bin/env sh

## Add this to your wm startup file.

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

outputs=$(polybar --list-monitors | cut -d ":" -f1)
lines=$(polybar --list-monitors | cut -d ":" -f1 | wc -l)

if [[ $lines == 2 ]]; then
    for m in $outputs; do
        if [[ $m == "HDMI-1-1" ]]; then
            polybar -c ~/.config/polybar/config-pri.ini primary &
        elif [[ $m == "eDP1" ]]; then
            polybar -c ~/.config/polybar/config-sec.ini secondary &
        fi
    done
else
    MONITOR=$m polybar -c ~/.config/polybar/config.ini main &
fi

