#!/bin/bash

if [ "$(playerctl --player=spotify status)" = "No players found" ]; then
    echo "No music is playing"
elif [ "$(playerctl --player=spotify status)" = "Paused"  ]; then
    playerctl --player=spotify metadata --format "{{ title }} - {{ artist }}"
else # Can be configured to output differently when player is paused
    playerctl --player=spotify metadata --format "{{ title }} - {{ artist }}"
fi
