echo -n 'Enter number of credits earned : '
read creditAmount
echo -n 'Enter the amount of crew members : '
read crewAmount

echo 'Should the credits be evenly distributed?'
select userChoice in "Yes" "No" "Quit"
do
	case $userChoice in
		"Yes")
			echo Everyone gets $(($creditAmount/$crewAmount))
		;;
		"No")
			for ((x=1;x<=$crewAmount;x++))
			do
				echo -n Enter percentage for crew member $x : %
				read percentage
				echo Crew Member $x gets $(($creditAmount*$percentage/100)) credits
			done
		;;
		"Quit")
			break
		;;
		*) echo Invalid Choice;;
	esac
done
