echo -n 'Enter number of credits earned : '
read creditAmount
echo -n 'Enter the amount of crew members : '
read crewAmount

echo 'Should the credits be evenly distributed?'
select userChoice in "Yes" "No" "Quit"
do
	case $userChoice in
		"Yes")
			echo Everyone gets $(($creditAmount/$crewAmount)) credits
		;;
		"No")
			x=0
			until [ $x -eq $crewAmount ]
			do
				echo -n Enter percentage for crew member $(($x+1)) : %
				read percentage
				echo Crew Member $(($x+1)) gets $(($creditAmount*$percentage/100)) credits
				x=$(($x+1))
			done
		;;
		"Quit")
			break
		;;
		*) echo 'Invalid Choice';;
	esac
done
