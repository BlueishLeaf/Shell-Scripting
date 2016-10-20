cd
cd Desktop

myArray=(blue black unused)

echo -n "enter num1 : "
read num1
echo -n "enter num2 : "
read num2
echo -n "enter num3 : "
read num3

myArray[2]=$num1
myArray[3]=$num2
myArray[4]=$num3

for value in ${myArray[@]}
do
    echo $value
done
