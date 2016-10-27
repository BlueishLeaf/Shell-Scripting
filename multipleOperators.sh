echo -n 'Enter num 1 < 10 : '
read num1
echo -n 'Enter num 2 < 10 : '
read num2

if [ $num1 -gt 0 -a $num1 -lt 10 -a $num2 -gt 0 -a $num2 -lt 10 ] ; then
	echo $(($num1+$num2))
else
	echo 'ERROR'
fi
