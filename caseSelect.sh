echo 'Please enter your choice: '

options=("input number" "input text" "quit")

select userChoice in "${options[@]}"
do
	case $userChoice in
		"input number")
			echo -n 'Enter number: '
				read num
				echo You have entered $num
			;;
		"input text")
			echo -n 'Enter text: '
				read text
				echo You have entered $text
			;;
		"quit")
			break
			;;
		*) echo 'invalid';;
	esac
done
