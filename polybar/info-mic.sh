#!/bin/sh

cnt=$(pamixer --get-mute --default-source) 
# --source $SOURCE)
if [ "$cnt" = "false" ]; then
  CHAR=" "
  VAL="on "
else
  CHAR=""
  VAL="off"
fi
echo "$CHAR $VAL"
