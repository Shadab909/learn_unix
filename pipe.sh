#!/usr/bin/env bash

FILES=$(ls -1 | sort -r | head -3)

COUNT=1

for FILE in $FILES; do
    echo "FILE #$COUNT : $FILE"
    ((COUNT++))
done
