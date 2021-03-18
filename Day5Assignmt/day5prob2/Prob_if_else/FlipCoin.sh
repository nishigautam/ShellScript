#! /bin/bash

Result=$((RANDOM%2))
if [[ ${Result} -eq 0 ]]; then
	echo "HEAD"
elif [[ ${Result} -eq 1 ]]; then
	echo "TAIL"
fi
