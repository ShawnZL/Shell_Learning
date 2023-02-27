#!/bin/bash
RED_COLOR='\E[1;31m'
GREEN_COLOR='\E[1;32m'
YELLOW_COLOR='\E[1;33m'
BLUE_COLOR='\E[1;34m'
RES='\E[0m'

function usage(){
	echo "Usage:$0 {1|2|3|4}"
	exit 1
}

menu(){
cat <<END
=================
1.apple
2.pear
3.banana
4.cherry
================
END
}
function chose(){
read -t 15 -p "ple enter a number" num
case $num in
	1)
		echo -e "${RED_COLOR}apple${RES}"
		;;
	2)
		echo -e "${GREEN_COLOR}pear${RES}"
		;;
	3)
		echo -e "${YELLOW_COLOR}banana${RES}"
		;;
	4)
		echo -e "${BLUE_COLOR}cherry${RES}"
		;;
	*)
		usage
esac
}

main(){
	menu
	chose
}
main
