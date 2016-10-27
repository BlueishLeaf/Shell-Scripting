if [ "$#" -eq 3 ] ; then
    fileNames=("$1" "$2" "$3")
    select userChoice in "Check if file exists and its size" "Check for full access" "Quit"
    do
        case $userChoice in
        "Check if file exists and its size")
            for file in ${fileNames[@]}
            do
                if [ -s $file ] ; then
                    echo The $file file exists and has a size greater than 0
                else
                    echo The $file file does not exist or has a size equal to 0
                fi
            done
        ;;
        "Check for full access")
            for file in ${fileNames[@]}
            do
                if [ -r $file -a -w $file -a -x $file ] ; then
                    echo You have full access to the $file file
                else
                    echo You do not have full access to the $file file
                fi
            done
        ;;
        "Quit")
            break
        ;;
        *) echo Invalid Option;;
        esac
    done
else
    echo 'Error, too few or too many arguments'
    break
fi
