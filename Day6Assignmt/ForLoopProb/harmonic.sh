#! /bin/bash

echo Enter a number
read n
har=1

for (( i=2 ; i<=n ; i++ ))
do
	temp=$(echo "1/$i" | bc -l)
	har=$(($har + $temp))
done

echo $temp
echo $har
