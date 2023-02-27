#!/bin/bash
RED_COLOR='\E[1;31m'
GREEN_COLOR='\E[1;32m'
YELLOW_COLOR='\E[1;33m'
BLUE_COLOR='\E[1;34m'
PINK_COLOR='\E[1;35m'
RES='\E[0m'
function Usage(){
	echo "Usage $0 content{red|yellow|blue|green}"
	exit
}

color_word(){
if [ $# -ne 2 ];then
	Usage
fi

case "$2" in
	red|RED)
		echo -e "${RED_COLOR}$1${RES}"
		;;
	yellow|YELLOW)
		echo -e "${YELLOW_COLOR}$1${RES}"
		;;
	green|GREEN)
		echo -e "${GREEN_COLOR}$1${RES}"
		;;
	blue|BLUE)
		echo -e "${BLUE_COLOR}$1${RES}"
		;;
	pink|PINK)
		echo -e "${PINK_COLOR}$1${RES}"
		;;
	*)
		Usage
esac
}

main(){
	color_word $1 $2
}
main $*
