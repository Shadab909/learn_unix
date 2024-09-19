#!/usr/bin/env bash

function hello(){
    local L_NAME=$1
    echo "Hello $L_NAME"
}

goodBye(){
    echo "GoodBye $1"
}


echo "Calling hello function"
hello Shadab


echo "Calling goodbye function"
goodBye Shadab