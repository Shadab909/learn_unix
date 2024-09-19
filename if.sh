#1/usr/bin/env bash

COLOR=$1

if [ $COLOR = "blue" ]; then
    echo "The color is $COLOR"
else
    echo "This color is not blue."
fi

USR_GUESS=$2
COMPUTER=50

if [ $USR_GUESS -lt $COMPUTER ]; then
    echo "The guess is too low."
elif [ $USR_GUESS -gt $COMPUTER ]; then
    echo "The guess is too high."
else
    echo "The guess is correct."
fi
