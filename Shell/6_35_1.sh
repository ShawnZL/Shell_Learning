#!/bin/bash
read -t 15 -p "pls input two number:" a b
#no1
#[ ${#a} -le 0 ] && {
#	echo "the first num is null"
#	exit 1
#}
#[ ${#b} -le 0 ] && {
#	echo "the second num is null"
#	exit 1
#}
#no1
[ -z "$a" ] || [ -z "$b" ] && {
	echo "Pls input two number again."
	exit 1
}

#no2
expr 1 + $a &>/dev/null
[ $? -ne 0 ] && {
	echo "the first num is not int"
	exit 1
}
expr 1 + $b &>/dev/null
[ $? -ne 0 ] && {
	echo "the second num is not int"
	exit 1
}

#no3
[ $a -eq $b ] && {
	echo "a=b"
	exit 0
}
[ $a -lt $b ] && {
	echo "a<b"
	exit 0
}
[ $a -gt $b ] && {
	echo "a>b"
	exit 0
}
