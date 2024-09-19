#!/usr/bin/env bash

SUCESS=0

COMPUTER=$(((RANDOM % 50) + 1))

while [ $SUCESS -eq 0 ]; do
    read -p "Enter a number between 1-50 : " GUESS
    if [ -z $GUESS ]; then
        echo "No input"
        continue
    elif [[ ! $GUESS =~ ^[0-9]+$ ]]; then
        echo "Non numeric character detected."
        continue
    fi
    SUCESS=1
done

# MARGIN=$((COMPUTER - GUESS))
# echo "Margin : $MARGIN"

if [ $GUESS -gt $COMPUTER ]; then
    echo "Guess is too high"
    echo "Correct guess be  $COMPUTER"
elif [ $GUESS -lt $COMPUTER ]; then
    echo "Guess is too low"
    echo "Correct guess be  $COMPUTER"
else
    echo "You guessed it!"
fi

exit 0
