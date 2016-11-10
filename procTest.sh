echo 'Enter your choice'

userOptions=("List the processes running at the moment" "Terminate a process" "Alter the priority of a process" "Send a signal to a process" "Exit")

select userChoice in "${userOptions[@]}"
do
	case $userChoice in
		"List the processes running at the moment")
			echo "Here is a list of the currently running processes"
			ps -A
			;;
		"Terminate a process")
			ps -A
			echo -n "Enter PID of process you wish to kill: "
			read procPid
			kill $procPid
			;;
		"Alter the priority of a process")
			ps -A
			echo -n "Enter PID of process you wish to alter the priority of: "
			read procPid
			echo -n "What priority shall it be set to?: "
			read priorityNum
			renice -n $priorityNum -p $procPid
			;;
		"Send a signal to a process")
			ps -A
			echo -n "Enter PID of process you wish to send a signal to: "
			read procPid
			kill -l
			echo -n "Enter signal you wish to send: "
			read procSig
			kill -s $procSig $procPid
			;;
		"Exit")
			break
			;;
		*) echo "invalid option";;
	esac
done
