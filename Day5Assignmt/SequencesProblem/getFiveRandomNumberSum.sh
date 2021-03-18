#! /bin/bash

n=5
sum=0 

for (( i = 0 ; i < 5 ; i++ ))

do
	num=$(((RANDOM%90)+10))
	echo $num
	sum=$((sum + num))
done

echo $sum
avg=$(($sum / $n))
echo $avg
