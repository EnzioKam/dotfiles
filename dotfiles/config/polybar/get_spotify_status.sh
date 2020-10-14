#!/bin/bash

res=$(playerctl --player=spotify status 2>&1 1>/dev/null)

if [[ $? == 1 ]]; then
    echo
elif [ "$(playerctl --player=spotify status)" = "Paused"  ]; then
    playerctl --player=spotify metadata --format "{{ title }} - {{ artist }}"
elif [ "$(playerctl --player=spotify status)" = "Playing"  ]; then
    playerctl --player=spotify metadata --format "{{ title }} - {{ artist }}"
else
    echo "No music is playing"
fi

