#! /bin/bash

echo "Enter lower bound:"
read num1

echo "Enter Upper bound:"
read num2

while [[ $num1 -le $num2 ]]
do
	if [[ $num1 -le 2 ]]
	then
		continue
	fi
	LIMIT=$num1-1

	for (( i=2 ; i<=LIMIT ; i++ ))
	do
		check=$num1%$i
		if [[ $check -eq 0 ]]
		then
			break
		fi
	done
if [[ $i -gt $LIMIT ]]
then
	echo "$num1 is a Prime Number"
fi
num1=$num1+1

done
