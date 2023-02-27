#!/bin/bash
total=0
num=$((RANDOM%61))
echo "price is $num"
echo "====================="
usleep 1000000
clear
echo 'price is ?'
apple(){
	read -p "input your price" PRICE
	expr $PRICE + 1 &>/dev/null
	if [ $? -ne 0 ];then
		echo "number"
		apple
	fi
}

guess(){
	((totall++))
	if [ $PRICE -eq $num ];then
		echo "true $num"
	elif [ $total -gt 3 -a $total -le 6 ];then
		echo "$total try,"
	elif [ $total -gt 6 ];then
		echo "total $num try"
		exit 0
	elif [ $total -gt $num ];then
		echo "again"
		apple
	elif [ $PRICE -lt $num ];then
		echo "too low"
		apple
	fi
}

main(){
	apple
	while true
		do
			guess
		done
}
main
