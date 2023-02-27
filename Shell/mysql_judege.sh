#!/bin/bash
echo method1---------------
if [ `sudo lsof -i tcp:3306|wc -l` -gt 0 ];then
	echo "Mysql is Running"
else
	echo "Mysql is Stopping"
	/etc/init.d/mysqld start
fi
