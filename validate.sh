#!/usr/bin/env bash

VALID=0

while [ $VALID -eq 0 ]; do
    # read -p "Enter your name : " NAME

    # if [ -z $NAME ]; then
    #     echo "Name not passed"
    #     continue
    # elif [[ ! $NAME =~ ^[A-Za-z]+$ ]]; then
    #     echo "Name should contain alphabets only"
    #     continue
    # fi

    # read -p "Enter your age : " AGE

    # if [ -z $AGE ]; then
    #     echo "Age not passed"
    #     continue
    # elif [[ !AGE =~ ^[0-9]+$ ]]; then
    #     echo "Age should be numeric only"
    #     continue
    # fi

    read -p "Enter your name and age : " NAME AGE

    if [[ (-z $NAME) || (-z $AGE) ]]; then
        echo "Either one or both fields are empty."
        continue
    elif [[ ! $NAME =~ ^[A-Za-z]+$ ]]; then
        echo "Name should only contain alphabets."
        continue
    elif [[ ! $AGE =~ ^[0-9]+$ ]]; then
        echo "Age should only be numeric."
        continue
    fi

    VALID=1
done

echo "Credentials has been validated."
echo "Name : $NAME and Age : $AGE"

exit 0
