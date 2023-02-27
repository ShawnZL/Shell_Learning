#!/bin/bash
#. /etc/init.d/functions not ubuntu
. /lib/lsb/init-functions
function usage(){
	echo $"usage:$0 url"
	exit 1
}

function check_url(){
	wget --spider -q -o /dev/null --tries=1 -T 5 $1
	if [ $? -ne 0 ];then
		action "$1 is yes." /bin/true
	else
		action "$1 is no." /bin/false
	fi
}

main(){
	if [ $# -ne 1 ];then
		usage
	fi
	check_url $1
}
main $*
