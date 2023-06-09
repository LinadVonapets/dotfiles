#!/bin/sh

CHAR=""
cnt=$(cat /proc/acpi/bbswitch)
cnt=${cnt##* }
cnt=$(printf "%3s" "$cnt")
echo "$CHAR $cnt"
