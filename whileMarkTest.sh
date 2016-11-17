average=0
sum=0
num=0

while true
do
	echo -n "Enter a mark from 0-100, press q to quit: "
	read mark
	if [ $mark -ge 0 -a $mark -le 100 ]
	then
		sum=$(($sum+$mark))
		num=$(($num+1))
	elif [ $mark == "q" ]
	then
		break
	else
		echo "invalid"
	fi
done

average=$(($sum/$num))
echo $average
