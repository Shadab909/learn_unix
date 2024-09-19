#!/usr/bin/env bash

NAMES=$@

for NAME in $NAMES; do
    if [ $NAME = "Maddy" ]; then
        # break
        continue
    fi
    echo "Hi $NAME"
done

echo "loop terminated"
