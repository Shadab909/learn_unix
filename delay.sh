#!/usr/bin/env bash

DELAY=$1

if [ -z $DELAY ]; then
    echo "Put some value for delay"
    exit 1
fi

echo "We are going on a delay of $DELAY seconds"
sleep $DELAY
echo "We are awake"
