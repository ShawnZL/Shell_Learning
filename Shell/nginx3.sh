#!/bin/bash
echo http method3---------------
if [ `netstat -lntup|grep nginx|wc -l` -gt 0 ];then
	echo "Nginx is running"
else
	echo "Nginx is Stopped"
fi
