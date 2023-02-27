#!/bin/bash
array=({1..5})
for((i=0;i<${#array[*]};i++))
do
	echo ${array[i]}
done
