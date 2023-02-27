#!/bin/bash
path=$(pwd)
#[ ! -d "$path" ] && mkdir $path -p # if the directory is not exited
#menu
cat <<END
	1.[install lamp]
	2.[install lnmp]
	3.[exit]
	pls input the num you want:
END
read num
expr $num + 1 &>/dev/null
[ $? -ne 0 ] && {
	echo "the num is not the int"
	exit 1
}
#no1
[ $num -eq 1 ] && {
	echo "starting installing lamp."
	sleep 2;
	[ -x "$path/lamp.sh" ] || { # is exec
		echo "$path/lamp.sh does not exist or can not be exec"
		exit 1
	}
	source $path/lamp.sh
	exit $?
	#$path/lamp.sh
}

[ $num -eq 2 ] && {
	echo "start installing LNMP."
	sleep 2;
	[ -x "$path/lnmp.sh" ] || {
		echo "$path/lnmp.sh does not exist or can not be exec"
		exit 1
	}
	source $path/lnmp.sh
	exit $?
}
[ $num -eq 3 ] && {
	echo bye.
	exit 3
}
[[ ! $num =~ [1-3] ]] && {
	echo "the num you input must be {1|2|3}"
	echo "Input Error"
	exit 4
}
