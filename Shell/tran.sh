#!/bin/bash
if (test -z $1);then
	read -p "Input Max Lines:" MAX
else
	MAX=$1
fi
i=1
while [ $i -le $MAX ]
do
	j=1
	while [ $j -le $i ]
	do
		f=$[i-1]
		g=$[j-1]
		if [ $j -eq $i ] || [ $j -eq 1 ] ; then
			declare SUM_${i}_$j=1
		else
			declare A=$[SUM_${f}_$j]
			declare B=$[SUM_${f}_$g]
			declare SUM_${i}_$j=`expr $A+$B`
		fi
		echo -en $[SUM_${i}_${j}]" "
		let j++
	done
	echo
	let i++
done
