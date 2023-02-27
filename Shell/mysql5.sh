#!/bin/bash
[ `rom -qa nmap|wc -l` -lt 1 ] && yum install nmap -y &>/dev/null
if [ `sudo nmap 127.0.0.1 -p 3306 2>/dev/null|grep open|wc -l` -gt 0 ]; then
	echo "mysql is running"
else
	echo "mysql is stopping"
	sudo service mysql start
	[ $? -eq 0 ] && echo "mysqll is starting" || echo "failed to start"
fi

