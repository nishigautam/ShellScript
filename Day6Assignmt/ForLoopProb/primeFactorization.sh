#! /bin/bash

echo "Enter Number :"
read -p number
num=$(($number/2))
count=0
for(( i=2;i<=$num;i++ ))
do
	if [[ `echo $number $i | awk '{print $1%$2}'` == 0 ]]
	then
		echo -n " $i"
		count=1
	fi
done

if [[ $count -eq 0 ]]
then
	echo "It is a prime number "
fi
