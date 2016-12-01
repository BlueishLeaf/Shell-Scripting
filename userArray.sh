password_file=/etc/passwd
group_file=/etc/group

userOptions=("Check if user exists" "Create user" "Delete user" "Check if group exists" "Create group" "Delete group" "Quit")

userCheck ()
{
	userFound=0
	for userName in $(awk 'BEGIN{FS=":"}{print $1}'<"$password_file")
	do
		if [ $userName == $userLookup ]; then
			userFound=1
		fi
	done
}

groupCheck ()
{
	groupFound=0
	for groupName in $(awk 'BEGIN{FS=":"}{print $1}'<"$group_file")
	do
		if [ $groupName == $groupLookup ]; then
			groupFound=1
		fi
	done
}

select userChoice in "${userOptions[@]}"
do
	case $userChoice in
		"Check if user exists")
			echo "Enter username: "
			read userLookup
			userCheck $userLookup
			if [ $userFound -eq 1 ]; then
				echo "User exists"
			else
				echo "User doesnt exist"
			fi
		;;
		"Create user")
			echo "Enter new username: "
			read userCreate
			echo "What group does this user belong to?: "
			read groupLookup
			groupCheck $groupLookup
			if [ $groupFound -eq 1 ]; then
				useradd -m $userCreate -g $groupLookup
			else
				groupadd $groupLookup
				useradd $userCreate -g $groupLookup
			fi
		;;
		"Delete user")
			echo "Enter username: "
			read userDelete
			userdel -m $userDelete
		;;
		"Check if group exists")
			echo "Enter group name: "
			read groupLookup
			groupCheck $groupLookup
			if [ $groupFound -eq 1 ]; then
				echo "Group exists"
			else
				echo "Group doesnt exist"
			fi
		;;
		"Create group")
			echo "Enter group name: "
			read groupName
			groupadd $groupName
		;;
		"Delete group")
			echo "Enter group name: "
			read groupName
			groupdel $groupName
		;;
		"Quit")
			break
		;;
		*)echo "Invalid";;
	esac
done
