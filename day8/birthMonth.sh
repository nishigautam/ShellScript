#! /bin/bash

declare -A dictionay
i=1
function get_month()
{
case $i in
	1) echo "January";;
	2) echo "February";;
	3) echo "March";;
	4) echo "April";;
	5) echo "May";;
	6) echo "June";;
	7) echo "July";;
	8) echo "August";;
	9) echo "September";;
	10) echo "october";;
	11) echo "November";;
	12) echo "December";;
	*) echo "Nothing";;
esac
}

while [[ $i -le 50 ]]
do
	month=$( get_month $(((RANDOM%11)+1)) )
	year=`shuf -i 92-93 -n 1 | awk '{print $0}'`
	dictionary["person$i"]="month$-$year"
	((i++))
done

count=$(printf '%s\n' "${dict[@]}" | awk -F '-' '{print $1}' | sort | uniq -c | sort -r | head -1 | awk '{print $1}' )
number=$(printf '%s\n' "${dict[@]}" | awk -F '-' '{print $1}' | sort | uniq -c | sort -r | head -1 | awk '{print $1}' )

echo $count "People having birthdays on same month" $number
echo "Keys : " ${!dict[@]}
echo "Values :" ${dict[@]}
echo "Total Count of Dictionary:" ${#dict[@]}
