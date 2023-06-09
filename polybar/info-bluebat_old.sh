#!/usr/bin/env bash

MAC="9C:19:C2:3D:B5:1C"
# MAC=$1

DEVS=$(upower -e | grep headset | head -1)

[ -n "$DEVS" ] && {
  ANS=$(upower -i $DEVS | grep percentage | awk 'NF>1{print $NF}' | tr -d '\r\n')
  [ "${ANS: -1}" == "%" ] && {
    printf '🎧%04s' "$ANS"
  } || {
    echo -n "🎧 no"
  }
} || {
  echo ""
  # echo -n "🎧 n/a"
}

