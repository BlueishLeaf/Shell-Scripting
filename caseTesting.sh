cd
cd Desktop

echo "choose a color : "
options=(red green blue quit)
select varOption in "${options[@]}"
do
    case $varOption in
        "green")
        echo you chose green
        ;;
        "red")
        echo you chose red
        ;;
        "blue")
        echo you chose wrong
        ;;
        "quit")
        break
        ;;
        *) echo invalid choice;;
    esac
done
