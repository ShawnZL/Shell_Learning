#!/bin/bash
cat << END
	1.panxiaoting
	2.gongli
	3.gaoyuanyuan
END
read -p "which do you like? Pls input the num:" a
[ -z "$a" ] && {
	echo "pls enter a num"
	exit 1
}
expr $a + 1 &>/dev/null
[ $? -ne 0 ] && {
	exit 1
}

[ $a -eq 1 ] &&{
	echo "Pan"
	exit 0
}

[ $a -eq 2 ] &&{
	echo "gong"
	exit 0
}

[ $a -eq 3 ] &&{
	echo "gao"
	exit 0
}

[[ ! $a =~ [1-3] ]] && {
	echo "not a man"
	exit 0
}

