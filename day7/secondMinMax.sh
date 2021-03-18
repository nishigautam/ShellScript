#! /bin/bash

num=10
count=1

while [ $count -le $num ]
do
	random[$count]=$(((RANDOM%900)+100))
	count=$((count+1))
done

echo "${random[@]}"

max=0
second_max=0
min=10000
second_min=10000

for num in ${random[@]}
do
	if [ $num -gt $max ]
	then
		max=$num
	fi
	if [ $num -lt $min ]
	then
		min=$num
	fi
done


for num in ${random[@]}
do
	if [ $num -ne $max ]
	then
		if [ $num -gt $second_max ]
		then
			second_max=$num
		fi
	fi
	if [ $num != $min ]
	then
		if [ $num -lt $second_min ]
		then
			second_min=$num
		fi
	fi
done


echo "Second Largest element is : " $second_max

echo "Second Smallest element is:" $second_min
