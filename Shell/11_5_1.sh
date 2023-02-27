#!/bin/bash
cd /oldboy
for filename in `ls *.jpg`
do
	sudo mv $filename `echo $filename|sed 's/_finished//g'`
done
