#! /bin/bash

echo "Enter Number :"
read n

isPallindrome() {
	singleDigit=0
	rev=0
	number=$n
}

while [ $n -gt 0 ]
do
	singleDigit=$(($n%10))
	n=$(($n/10))
	rev=$( echo ${rev}${singleDigit} )
done

if [[ $number -eq $rev ]]
then
	echo "Number is Pallindrome"
else
	echo "Number is NOT Pallindrome"
fi

