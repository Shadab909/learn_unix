#!/usr/bin/env bash

STATUS=0
PID=$1

if [ -z $PID ]; then
    echo "Please enter a process id"
    exit 1
fi

echo "Watching process with id $PID"

while [ $STATUS -eq 0 ]; do
    ps $PID >/dev/null
    STATUS=$?
done

echo "Process with id $PID has terminated"
exit 0
