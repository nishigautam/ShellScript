#! /bin/bash

randomNumber1=$(((RANDOM%6)+1))
randomNumber2=$(((RANDOM%6)+1))

sum=$(($randomNumber1 + $randomNumber2))

echo $randomNumber1 $randomNumber2
echo $sum
