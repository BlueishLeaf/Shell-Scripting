cd
cd Desktop

echo -n "Please enter overall result : "
read result

if [ $result -lt 40 ] ; then
	echo "You failed."
elif [ $result -lt 50 ] ; then
	echo "Pass qualifications."
elif [ $result -lt 60 ] ; then
	echo "Second Honors"
elif [ $result -lt 70 ] ; then
	echo "First Honors"
elif [ $result -gt 100 ] ; then
	echo "Error in result."
else echo "Well done - You got a distinction"
fi
