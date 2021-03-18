#! /bin/bash

echo "Enter a:"
read a
echo "Enter b:"
read b
echo "Enter c:"
read c

val=`expr $a + $b \* $c`
val_2=`expr $a % $b + $c`
val_3=`expr $c + $b / $b`
val_4=`expr $a \* $b + $c`

echo "1." $val
echo "2." $val_2
echo "3." $val_3
echo "4." $val_4

