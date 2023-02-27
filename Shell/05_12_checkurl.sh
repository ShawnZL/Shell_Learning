CheckUrl() {
timeout=5
fails=0
success=0
while true
	do
		wget --timeout=$timeout --tries=1 http://oldboy.blog.51cto.com -q -O /dev/null
		if [ $? -ne 0 ]
			then
				let fails=fails + 1
		else
				let success+=1
		fi
		if [ $success -ge 1 ] #<--bigger than success
			then
				echo success
				exit 0
		fi
		if [ $fails -ge 2 ]
			then
				Critical="sys is down."
				echo $Critical|tee|mail -s "$Critical" 1140068696@qq.com
				exit 2
		fi
done
}
CheckUrl
