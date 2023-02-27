#!/bin/bash
PATH="/application/mydql/bin:$PATh"
MYUSER=root
MYPASS=oldboy123
SOCKET=/data/3306/mysql.sock
MYCMD="mysql -u$MYUSER -p$MYPASS -S $SOCKET"
for dbname in oldboy oldgirl xiaoting bingbing
do
	echo ============${dbname}.test=============
	$MYCMD -e "use $dbname;select * from ${dbname}.test;"
done
