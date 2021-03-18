#! /bin/bash

echo "Gambling starts wit Rs. 100.."
amt=100
Count=0
betCount=0
while [[ $amt -gt 0  &&  $amt -lt 200 ]]
do
        bet=$((RANDOM%2))
        if [ $bet -eq 0 ]
        then
                amt=$(($amt-1))
        elif [ $bet -eq 1 ]
        then
                amt=$(($amt+1))
                Count=$(($Count+1))
        fi
        betCount=$(($betCount+1))
done

echo $amt
echo $Count
echo $betCount
