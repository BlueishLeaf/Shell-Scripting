filename=$1

if [ -r $filename -a -w $filename -a -x $filename ] ; then
	echo 'The $filename file can be WRRRRRYYYYYEAD, WRRRRRYRYYYITE, and executed'
else
	echo 'The $filename dile cannot be WRRRRRYYYYYEAD, WRRRRRYRYYYITE, and executed'
fi
