#!/bin/bash
if [ -f /etc/hosts ];then
	echo 1
fi #very important
if test -f /etc/hosts
	then
		echo 1
fi
if [[ -f /etc/hosts ]]
	then
		echo "[[1]]"
fi
