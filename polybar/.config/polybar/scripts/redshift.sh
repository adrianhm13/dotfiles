#!/bin/bash

if pgrep -x redshift &>/dev/null; then
    temp=$(redshift -p 2>/dev/null | grep temp | cut -d ":" -f 2 | tr -dc "[:digit:]")
    if [[ -z "$temp" ]]; then
        echo "%{F#65737E}" # Redshift running but temp unavailable
    elif [[ $temp -ge 5000 ]]; then
        echo "%{F#8FA1B3}" # Daytime
    elif [[ $temp -ge 4000 ]]; then
        echo "%{F#EBCB8B}" # Sunset
    else
        echo "%{F#D08770}" # Night
    fi
else
    echo "%{F#65737E}" # Redshift not running
fi
