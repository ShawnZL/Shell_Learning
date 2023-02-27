#!/bin/bash
for n in $1
do
	if [ `expr length $n` -le 6 ]
	then
		echo $n
	fi
done
