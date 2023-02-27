#!/bin/bash
#create by Shawn
. /etc/init.d/functions
FILE_PATH=/etc/openvpn_authfile.conf
[ ! -f $FILE_PATH ] && touch $FILE_PATH
usage() {
	cat << EOF
	USAGE: `basename $0` {-add|-del|-search} username
EOF
}

#judge run user
if [ $UID -ne 0 ];then
	echo "You're not supper user, pls call root!"
	exit 1;
fi


#judge arg numbers
if [ $# -ne 2 ];then
	usage
	exit 2
fi

case "$1" in
	-a|-add)
		shift #clear $1, make $2 as $1, location move to left
		if grep "^$1$" ${FILE_PATH} >/dev/null 2>&1
			then
				action $"vpnuser, $1 is exist" /bin/false
				exit
		else
			chattr -i ${FILE_PATH}
			/bin/cp ${FILE_PATH} ${FILE_PATH}.$(date +%F%T)#add time to the tail
			echo "$1" >> ${FILE_PATH}
			[ $? -eq 0 ] && action $"Add $1" /bin/true

			chattr +i ${FILE_PATH}
		fi
		;;
	-d|-del)
		shift
		if [ `grep "\b$1\b" ${FILE_PATH}|wc -l` -lt 1 ]
			then
				action $"vpnuser,$1 is not exist." /bin/false
				exit
		else
			chattr -i ${FILE_PATH} ${FILE_PATH}.$(date +%F%T)
			sed -i "/^${1}$/d" ${FILE_PATH}
			[ $? -eq 0 ] && action $"Del $1" /bin/true
			chattr +i ${FILE_PATH}
			exit
		fi
		;;
	-s|-search)
		shift
		if [ `grep "\b$1\b" ${FILE_PATH}|wc -l` -lt 1 ]
			then
				echo $"vpnuser,$1 is not exist.";exit
		else
			echo $"vpnuser,$1 is exist.";exit
		fi
		;;
	*)
		usage
		exit
		;;
esac
			
