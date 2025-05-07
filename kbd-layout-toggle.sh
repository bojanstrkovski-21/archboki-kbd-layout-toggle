#!/bin/bash

# Check current layout
current_layout=$(setxkbmap -query | grep layout | awk '{print $2}')

# Toggle between US and MK layouts
if [ "$current_layout" = "us" ]; then
    setxkbmap mk
    notify-send "Keyboard Layout" "Switched to Macedonian (MK)" -t 2000
else
    setxkbmap us
    notify-send "Keyboard Layout" "Switched to US" -t 2000
fi
