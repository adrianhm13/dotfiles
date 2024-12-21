#!/bin/bash

TEMP_FILE="/tmp/wlsunset_temp"
DEFAULT_TEMP=4500

# Initialize temperature file if it doesn't exist
if [ ! -f "$TEMP_FILE" ]; then
    echo $DEFAULT_TEMP >"$TEMP_FILE"
fi

current_temp=$(cat "$TEMP_FILE")

case "$1" in
"toggle")
    pid=$(pgrep wlsunset)
    if [ -z "$pid" ]; then
        wlsunset -T 6500 -t $current_temp &
        echo '{"text": "🌙", "class": "on", "tooltip": "Night Light: On ('$current_temp'K)"}'
    else
        kill $pid
        echo '{"text": "☀️", "class": "off", "tooltip": "Night Light: Off"}'
    fi
    ;;
"increase")
    new_temp=$((current_temp + 500))
    if [ $new_temp -le 6500 ]; then
        echo $new_temp >"$TEMP_FILE"
        pkill wlsunset
        wlsunset -T 6500 -t $new_temp &
    fi
    ;;
"decrease")
    new_temp=$((current_temp - 500))
    if [ $new_temp -ge 2000 ]; then
        echo $new_temp >"$TEMP_FILE"
        pkill wlsunset
        wlsunset -T 6500 -t $new_temp &
    fi
    ;;
*)
    pid=$(pgrep wlsunset)
    if [ -z "$pid" ]; then
        echo '{"text": "☀️", "class": "off", "tooltip": "Night Light: Off"}'
    else
        echo '{"text": "🌙", "class": "on", "tooltip": "Night Light: On ('$current_temp'K)"}'
    fi
    ;;
esac
