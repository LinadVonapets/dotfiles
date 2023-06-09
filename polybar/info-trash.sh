#!/bin/sh

CHAR=""
cnt=$(trash-list | wc -l)
echo "$CHAR $cnt"
