#! /bin/bash

echo "Enter year: "
read year

if	[ $((year % 4)) -eq 0 ]
then
	if	[ $((year % 100)) -eq 0 ]
		then
			if	[ $((year % 400)) -eq 0 ]
				then
					echo "it's a leap year"
				else
					echo "it's not a leap year"
			fi
		else
			echo "It's not a leap year"
	fi
else
	echo "It's not a leap year"

fi
