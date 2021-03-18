#! /bin/bash

DiceRoll () {
	declare -A 
	count=$(($count+1))
	dice=$((($RANDOM%6)+1))
}

count=0
declare -A Stored_values="$(DiceRoll)"
echo "Result :" ${dice[@]}
echo "Key:" ${!dice[@]}
