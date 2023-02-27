#!/bin/bash
[ $# -ne 1 ] && {
	echo "no number"
	exit 1
}
#a=$1
read a
expr $a + 1 >/dev/null 2>&1
[ $? -ne 0 ] && {
	echo "pls input a int"
	exit 1
}
[ $a -eq "1" ] && {
	echo 1
	exit 0
}
[ $a -eq "2" ] && {
	echo 2
	exit 0
}
