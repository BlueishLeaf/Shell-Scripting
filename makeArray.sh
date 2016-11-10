echo 'Enter your choice'

select userChoice in "Create array" "Add array elements" "Quit"
do
    case $userChoice in
        "Create array")
            for varNum in {1..5}
            do
                echo Please enter value for element $varNum
                read userNum
                #Assign whatever the user enters to the next place in the array
                myArray[varNum]=$userNum
            done
            ;;
        "Add array elements")
            add=0
            for ((val=1; val<=${#myArray[*]}; val++))
            do
                echo Value $val is ${myArray[val]}
                add=$[ $add+${myArray[$val]} ]
            done
            echo Total=$add
            ;;
        "Quit")
            break
            ;;
        *) echo invalid;;
    esac
done