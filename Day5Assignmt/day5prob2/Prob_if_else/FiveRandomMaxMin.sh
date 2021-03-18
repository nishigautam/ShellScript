#! /bin/bash

max=0
min=10000
for(( i=0 ; i<=4 ; i++ ))
do
        num=$(((RANDOM%900)+100))
        echo $num
        if [ $min -gt $num ] ;
        then
                min=$num
        elif [ $max -lt $num ] ;
        then
                max=$num
        fi
done

echo "Minimum Number :" $min
echo "Maximum Number :" $max
