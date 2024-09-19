#!/usr/bin/env bash

#show 10 files in regular sorted manner

FILES=$(ls -1 | head)

GetFiles() {
    local COUNT=1
    for FILE in $FILES; do
        echo "File #$COUNT : $FILE"
        ((COUNT++))
    done
}

ShowFiles(){
    local COUNT=1
    local L_FILES=$@
    for FILE in $L_FILES; do
        echo "File #$COUNT : $FILE"
        ((COUNT++))
    done
}


echo "printing first 10 files with getfiles function"
GetFiles


echo "printing first 10 files with showfiles function"
ShowFiles $FILES