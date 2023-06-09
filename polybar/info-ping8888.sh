#!/bin/sh

HOST=8.8.8.8
SIGN=
#  📶

if ! ping=$(ping -n -c 1 -W 1 $HOST 2> /dev/null); then
    echo "$SIGN %{F#aaa}nope%{F-}"
else
    rtt=$(echo "$ping" | sed -rn 's/.*time=([0-9]{1,})\.?[0-9]{0,} ms.*/\1/p')

    if [ "$rtt" -lt 150 ]; then
        icon="%{F#3cb703}$SIGN%{F-}"
    elif [ "$rtt" -lt 250 ]; then
        icon="%{F#f9dd04}$SIGN%{F-}"
    else
        icon="%{F#d60606}$SIGN%{F-}"
    fi

    echo "$icon $rtt ms"
fi
