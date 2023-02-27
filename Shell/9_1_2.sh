#!/bin/bash
read -p "pls input a number:" ans
if [ $ans -eq 1 ];then
	echo "The number is 1"
elif [ $ans -eq 2 ];then
	echo "The number is 2"
#elif [ $ans -ge 3 -a $ans -le 9 ];then
elif [[ $ans =~ [3-9] ]];then
	echo "the number is $ans"
else
	echo "the num you input must be [1-9]"
fi

