#!/usr/bin/env bash

COUNT=0

LIMIT=$1

while [ $COUNT -lt $LIMIT ]; do
    echo "Count is $COUNT"
    ((COUNT++))
done
