cd
cd Desktop
echo hi hi hi hi hi hi > testFile
echo hi hi hi hi hi hi >> testFile

function square
{
    if [ "$#" -eq 1 ] ; then
        echo $[$1*$1]
    else
        echo 'error try again'
    fi
}

function divide
{
    roVar=10
    countVar="$(grep -cn hi testFile)"
    echo $[$roVar/$countVar]
}

select userChoice in "Square" "Divide" "Quit"
do
    case $userChoice in
        "Square")
            square $1
        ;;
        "Divide")
            divide
        ;;
        "Quit")
            break
        ;;
    *) echo Invalid;;
    esac
done