#! /bin/bash

declare -i arr
count=0

arr[0]=7
arr[1]=-7
arr[2]=-5
arr[3]=2
arr[4]=3

size=${#arr[@]}
flag=1

for (( i=0 ; i<$size ; i++ ))
do
	for (( j=$((i+1)) ; j < $size ; j++ ))
	do
		for (( k=$((j+1)) ; k < $size ; k++ ))
		do
			if [ $(( arr[i] + arr[j] + arr[k] )) -eq 0 ]
			then
				echo "Elements whose sum is zero : ${arr[i]}, ${arr[j]}, ${arr[k]} "
				sum=`expr ${arr[i]} + ${arr[j]} + ${arr[k]}`
				echo "sum of those elements : " $sum
			fi
		done
	done
done


