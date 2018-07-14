#!/bin/bash

function snapshot {
    raspistill -t 0 -o $DATE.jpg -n
}


while true; do
    snapshot
    rm $(./all_but_youngest.sh 10)
    sleep 2
done
