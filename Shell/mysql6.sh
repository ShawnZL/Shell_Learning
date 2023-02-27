#!/bin/bash
[ `rom -qa nmap|wc -l` -lt 1 ] && yum install nmap -y &>/dev/null
if [ `nc -w 2 127.0.0.1 3306 &>/dev/null&&echo ok|grep ok|wc -l` -gt 0 ];then
	echo "mysql is running"
else
	echo "mysql is stopping"
	sudo service mysql start
fi
