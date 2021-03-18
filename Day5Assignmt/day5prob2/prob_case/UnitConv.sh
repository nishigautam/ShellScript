#! /bin/bash

echo "Enter a number :"
read n

case $n in
	0) echo `expr=$n \* 12` ;;
	1) echo `expr=$n / 3.281` ;;
	2) echo `expr=$n / 12` ;;
	3) echo `expr=$n \* 3.281` ;;

esac

