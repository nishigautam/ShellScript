#! /bin/bash

isprime () {
	if[[ num -lt 2 || num % 2 -eq 0 ]]
	then
		num = 2
	fi
	for (( i=3 ; i*i -le num ; i += 2 ))
	do
		if [[ num % i -eq 0 ]]
		then
}
