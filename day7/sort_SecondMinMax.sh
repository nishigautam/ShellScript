#! /bin/bash

num=10
count=1
while [ $count -le $num ]
do
	arr[$count]=$(((RANDOM%900)+100))
	count=$((count+1))
done

echo "${arr[@]}"

temp=0

for ((i = 0; i<5; i++))
do

    for((j =i-1 ; j<10-i-1; j++))
    do
        if [ ${arr[j]} > ${arr[$((j+1))]} ]
        then
            # swap
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}
            arr[$((j+1))]=$temp
        fi
    done
done
echo "Array Sorted :"
echo ${arr[@]}
