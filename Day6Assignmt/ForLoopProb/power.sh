#! /bin/bash

echo "Enter Number :"
read num

power=$((2*$num))

if [ $num -ge 1 ]
then
	for (( i=1 ; i <= $num ; i++ ))
	do
		echo $((2**i))
	done
fi
