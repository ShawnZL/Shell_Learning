#!/bin/bash
cd /test
for filename in `ls|grep "txt$"`
do
	sudo mv $filename `echo $filename|cut -d . -f1`.gif
done
