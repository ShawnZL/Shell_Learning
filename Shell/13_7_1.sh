#!/bin/bash
. /etc/init.d/functions

check_count=0
url_list=(
http://blog.oldboyedu.com
http://blog.etiantian.org
http://www.baidu.com
http://www.google.com
)
function wait(){
	echo -n '3 seconds later, check URL'
	for ((i=0;i<3;i++))
	do
		echo -n ".";sleep 1
	done
	echo
}
function check_url(){
	wait
	for ((i=0;i<`echo ${#url_list[*]}`;i++))
	do
		wget -o /dev/null -T 3 --tries=1 --spider ${url_list[$i]} >/dev/null 2 >&1
		if [ $? -eq 0 ]
		then
			action "${url_list[$i]}" /bin/true
		else
			action "${url_list[$i]}" /bin/false
		fi
	done
	((check_count++))
}
main(){
while true
do
	check_url
	echo "-----------check count:${check_count}--------"
	sleep 10
done
}
main
