cd
cd Desktop

if [ "$#" -eq 2 ] ; then
	num=$(($1+$2))
	echo The sum of the arguments is $num
else
	echo "Error, too few or too many arguments. 2 arguments required."
fi
