#! /bin/bash

inch=42

ft=$(($inch/12))
echo "a." $ft

width=60
height=40

echo "b. Area =" `expr $width \* $height`

length=60
breadth=40
area=$(($length*$breadth))
area=$(($area * 25))
intoAcres=$(($area/43560))

echo "c." $intoAcres
