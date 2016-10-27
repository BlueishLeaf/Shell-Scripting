echo 'Input the name of your child : '
read varage

if [ $varage -gt 0 -a $varage -le 1 ] ; then
	echo 'This be a baby'
else
	echo 'Not a baby, or else a negative number'
fi
