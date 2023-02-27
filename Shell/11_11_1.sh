#!/bin/bash
PTAH="/application/mysql/bin:$PATH"
MYUSER=root
MYPASS=oldboy123
SOCKET=/data/3306/mysql.sock
MYCMD="mysql -u$MYUSER -p$MYPASS -S $SOCKET"
for dbname in oldboy oldgirl xiaoting bingbing
do
	$MYCMD -e "create database $dbname"
done
