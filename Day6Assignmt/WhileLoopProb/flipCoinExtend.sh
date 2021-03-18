#! /bin/bash

count=1
checkRandom=$((RANDOM%2))

while [ $count -lt 11 ]
do
	result=$((RANDOM%2))
	if [[ ${result} -eq 0 ]]
	then
		echo "HEAD"
	elif [[ ${result} -eq 1 ]]
	then
		echo "TAIL"
	fi
	if [[ $checkRandom -eq $result ]]
	then
		count=$((count+1))
	else
		count=1
		checkRandom=$result
	fi
done


