#! /bin/bash

echo "Enter Number :"
read n

check=$(($n / 10))
if [ $check -eq 0 ]
then
	echo "Ones"
else
	check=$(($check / 10))
	if [ $check -eq 0 ]
	then
		echo "Tens"
	else
		check=$(($check / 10))
		if [ $check -eq 0 ]
		then
			echo "Hundreds"
		else
			check=$(($check / 10))
			if [ $check -eq 0 ]
			then
				echo "Thousand"
			else
				echo "Invalid Input..."
			fi
		fi
	fi
fi

