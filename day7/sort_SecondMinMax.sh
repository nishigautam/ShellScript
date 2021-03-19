#! /bin/bash

declare -A arr

for (( i=0 ; i < 10 ; i++ ))
do
	checkNumber=$(((RANDOM%900)+100))
	arr[$i]=$checkNumber
done


second_max=$(printf '%s\n' "${arr[@]}" | sort -n | tail -2 | head -1)
second_min=$(printf '%s\n' "${arr[@]}" | sort -r | tail -2 | head -1)

echo "Values:" ${arr[*]}
echo "Key:" ${!arr[@]}
echo "Second Maximum Element:" $second_max
echo "Second Minimum Element:" $second_min




