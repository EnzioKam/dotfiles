#!/bin/bash

# see man zscroll for documentation of the following parameters
zscroll -l 25 \
        --delay 0.1 \
        --match-command "playerctl --player=spotify status" \
        --match-text "Playing" "--scroll 1" \
        --match-text "Paused" "--scroll 0" \
        --update-check true '/home/enzio/.config/polybar/get_spotify_status.sh' &

wait
