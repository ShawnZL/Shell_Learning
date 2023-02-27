#!/bin/bash
#add, subtract, multiply and divide
print_usage(){
	printf"please enter an integer\n"
	exit 1
}
read -p "please input first number: " firstnum
if [ -n "`echo $firstnum|sed 's/[0-9]//g'`" ];then
	print_usage
fi
read -p "please input the operators:" operators
if [ "${operators}" != "+" ]&&[ "${operators}" != "-"] &&[ "${operators}" != "*"]&&[ "${operators}" != "/"];then
	echo "please use {+|-|*|/}"
	exit 2
fi

read -p "please input first number: " secondnum
if [ -n "`echo $secondnum|sed 's/[0-9]//g'`" ];then
        print_usage
fi
echo "${firstnum}${operators}${secondnum}=$((${firstnum}${operators}${secondnum}))"
