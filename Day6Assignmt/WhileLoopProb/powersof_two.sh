#! /bin/bash

echo "Enter Power for 2 :"
read num
PowerOfTwo=1
count=0
LimitPowerTwo=256
while [ $num -ne $count ]
do
PowerOfTwo=$(expr $PowerOfTwo \* 2 )
count=$(expr $count + 1 )
done
if [ $PowerOfTwo -gt $LimitPowerTwo ]
then
echo "Value Exceeds limit of 256"
else
echo "2^ Power of" $num "is" $PowerOfTwo
fi
