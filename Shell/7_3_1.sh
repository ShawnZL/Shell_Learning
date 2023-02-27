#!/bin/bash
read -p "pls enter two num " a b
#error
#if [ $# -ne 2 ];then
#	echo "pls enter two"
#	exit 1
#fi

if [ $a -le 0 ];then
	echo "the first number is null"
	exit 1
fi

[ $b -le 0 ] && {
	echo "the second number is null"
	exit 1
}

expr $a + 1 &>/dev/null
[ $? -ne 0 ] && {
	echo "first number is not int"
	exit 1
}
expr $b + 1 &>/dev/null
if [ $? -ne 0 ];then
	echo "second number is not int"
	exit 1
fi
if [ $a -lt $b ];then
	echo "$a less than $b"
elif [ $a -eq $b ];then
	echo "$a equal $b"
else
	echo "$a bigger than $b"
fi
