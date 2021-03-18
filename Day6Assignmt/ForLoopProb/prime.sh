#! /bin/bash

echo "Enter number:"
read number

for (( i=2 ; i<=number/2 ; i++))
do
	if [ $((number%i)) -eq 0 ]
	then
		echo "Not a Prime Number."
		exit
	fi
done

echo "Prime Number"



