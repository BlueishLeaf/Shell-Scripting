cd
cd Desktop

echo -n "Please enter a number : "
read num1
echo -n "Please enter another number : "
read num2

if [ $num1 -eq $num2 ] ; then
    echo "$num1 is equal to $num2"
elif [ $num1 -lt $num2 ] ; then
    echo "$num1 is less than $num2"
elif [ $num1 -gt $num2 ] ; then
    echo "$num1 is greater than $num2"
fi
