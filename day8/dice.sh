#! /bin/bash


declare -A dice
num=10

dice[0]=0
dice[1]=0
dice[2]=0
dice[3]=0
dice[4]=0
dice[5]=0


while [[ ${dice[0]} -lt $num && ${dice[1]} -lt $num && ${dice[2]} -lt $num && ${dice[3]} -lt $num && ${dice[4]} -lt $num && ${dice[5]} -lt $num ]]
do
	checkNumber=$((RANDOM%6))
	dice[$checkNumber]=$(((dice[$checkNumber]+1)))
done

max=0
min=11

for num in ${dice[@]}
do
	if [ $num -gt $max ]
	then
		max=$num
		dice[$checkNumber]=$max
	fi
	if [ $num -lt $min ]
	then
		min=$num
	fi
done


echo "Keys:" ${!dice[@]}
echo "Values:" ${dice[*]}
echo "Maximum and Minimum Values :" $max "and" $min
