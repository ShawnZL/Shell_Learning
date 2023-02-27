#!/bin/bash
read -t 15 -p "pls input two number:" a b
#no1
[ ${#a} -le 0 ] && {
	echo "the first num is null"
	exit 1
}
[ ${#a} -le 0 ] && {
	echo "the second num is null"
	exit 1
}
#no2
expr $a + 1 &>/dev/null
[ $? -ne 0 ] && {
	echo "the first num is not int"
	exit 1
}
expr $b + 1 &>/dev/null
[ $? -ne 0 ] && {
	echo "the second num is not int"
	exit 1
}
#no3
echo "a-b=$(($a-$b))"
echo "a+b=$(($a+$b))"
echo "a*b=$(($a*$b))"
echo "a/b=$(($a/$b))"
echo "a**b=$(($a**$b))"
echo "a%b=$(($a%$b))"

