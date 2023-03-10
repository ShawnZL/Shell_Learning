#!/bin/bash
[ -f /etc/init.d/functions ] && . /etc/init.d/functions
RETVAL=0
add(){
	for ip in {1..16}
	do
		if [ $ip -eq 10 ];then
			continue
		fi
		ip addr add 10.0.2.$ip/24 dev eth0 label eth0:$ip &>/dev/null
		RETVAL=$?
		if [ $RETVAL -eq 0 ];then
			action "add $ip" /bin/true
		else
			action "add $ip" /bin/false
		fi
	done
	return $RETVAL
}
del(){
	for ip in {1..16}
	do
		if [ $ip -eq 10 ];then
			continue
		fi
		ipconfig eth0:$ip down &>/dev/null
		RETVAL=$?
		if [ $RETVAL -eq 0 ];then
			action "del $ip" /bin/true
		else
			action "del $ip" /bin/false
		fi
	done
}
main(){
	case "$1" in
		start)
			add
			RETVAL=$?
			;;
		stop)
			del
			RETVAL=$?
			;;
		restart)
			del
			sleep 2
			add
			RETVAL=$?
			;;
		*)
			printf "USAGE:$0 {start|stop|restart}\n"
	esac
	exit $RETVAL
}
main
