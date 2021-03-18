#! /bin/bash

echo "Enter Number :"
read n

count=-1

while [ $n -gt 0 ]
do
	count=$(($count+1))
	n=$(($n/10))
done
case $count in
	0) echo "Ones";;
	1) echo "Tens";;
	2) echo "Hundred";;
	3) echo "Thousand";;
esac

