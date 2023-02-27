#!/bin/bash
user="oldboy"
passfile="/tmp/user.log"
for num in {1..10}
do
	useradd $user$num
	pass="`echo "test$RANDOM"|md5sum|cut -c3-11`"
	echo "$pass"|passwd --stdin $user$num
	echo -e "user:$user$num\tpasswd:$pass">>$passfile
done
cat $passfile
