cd
cd Desktop

if [ -r file100.txt ] ; then
	echo "file100 is readable"
else
	echo "file100 is not readable"
fi

if [ -w file100.txt ] ; then
	echo "file100 is writable"
else
	echo "file100 is not writable"
fi

if [ -x file100.txt ] ; then
	echo "file100 is executable"
else
	echo "file100 is not executable"
fi
