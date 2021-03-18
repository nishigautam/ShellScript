#! /bin/bash

echo "Think of a number.."

read n
left=1
right=100
while [ $left -le $right ]
do
    mid=$(( ($left + $right) / 2 ))
    echo "Is Your Number " $mid "?"
    read check
    if [ $check -eq 1 ]
    then
	echo "Congrats! We found your Number"
	break
    else
	echo "Is Your Number smaller than " $mid
    	read less
        if [ $less -eq 1 ]
        then
	    right=$(($mid-1))
        else
	    left=$(($mid+1))
        fi
    fi
done
