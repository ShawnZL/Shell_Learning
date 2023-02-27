#!/bin/bash
echo http method5-------------------
#[ `rpm -qa nmap|wc -l` -lt 1 ] && yum install nmap -y &>/dev/null -lt 1 
if [ `nmap 127.0.0.1 -p 80 2>/dev/null|grep open|wc -l` -gt 0 ]; then
	echo "nginx is running"
else
	echo "nginx is stopped"
fi

