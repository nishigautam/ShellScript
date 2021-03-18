#! /bin/bash

echo "Enter date:"
read date
echo "Enter month:"
read month

if (( ($month <= 6 & $date <= 20 ) ))
then
	echo $Month $date "True";
elif (( ($month >= 3 & $month < 6) & ($date<31) ))
then
	echo $date $Month "True";
else
	echo "False";
fi
