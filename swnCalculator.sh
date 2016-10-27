echo -n 'Enter number of credits earned : '
read creditAmount
echo -n 'Enter the amount of crew members : '
read crewAmount

x=1

echo 'Should the credits be evenly distributed?'
select userChoice in "Yes" "No" "Quit"
do
	case $userChoice in
		"Yes")
			echo Everyone gets $(($creditAmount/$crewAmount)) credits
		;;
		"No")
			while [ $x -le $crewAmount ]
			do
				echo -n Enter percentage for crew member $x : %
				read percentage
				echo Crew Member $x gets $(($creditAmount*$percentage/100)) credits
				x=$(($x+1))
			done
		;;
		"Quit")
			break
		;;
		*) echo Invalid Choice;;
	esac
done
