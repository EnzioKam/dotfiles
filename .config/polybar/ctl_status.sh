#!/bin/bash

res=$(playerctl --player=spotify status 2>&1 1>/dev/null)

if [[ $? == 1 ]]; then
    echo "Inactive"
elif [ "$(playerctl --player=spotify status)" = "Paused"  ]; then
    echo "Paused"
elif [ "$(playerctl --player=spotify status)" = "Playing"  ]; then
    echo "Playing"
else
    echo "No music is playing"
fi

