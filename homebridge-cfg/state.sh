#!/bin/bash
array[0]="OPEN"
array[1]="CLOSED"

size=${#array[@]}
index=$(($RANDOM % $size))

if [ "${array[$index]}" == "OPEN" ]
    then
    	echo 'OPEN' >> ~/.homebridge/scripts/state.log
        echo OPEN
    else
    	echo 'CLOSED' >> ~/.homebridge/scripts/state.log
        echo CLOSED
fi
