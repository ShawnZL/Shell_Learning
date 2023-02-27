#!/bin/bash
array=(oldboy oldgirl shawn zzl)
for ((i=0;i<${#array[*]};i++))
do
	echo "This is num $i, then content is ${array[$i]}"
done
