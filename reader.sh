#!/usr/bin/env bash

COUNT=1

while IFS='' read -r LINE; do
    if [ $COUNT -gt 3 ]; then
        break
    fi
    echo "Line #$COUNT : $LINE"
    ((COUNT++))
done <"$1"
