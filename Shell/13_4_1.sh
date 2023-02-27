#!/bin/bash
array=(I am oldboy teacher welcome to oldboy training class)
for ((i=0;i<${#array[*]};i++))
do
	[ ${#array[$i]} -lt 6 ] && echo "${array[$i]}"
	
done
for word in ${array[*]}
do
	if [ `expr length $word` -lt 6 ];then
		echo $word
	fi
done

