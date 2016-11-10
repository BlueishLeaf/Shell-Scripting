echo -n 'Enter file name in current directory: '
read fileName

if [ -a $fileName ] 
then 
    if [ -x $fileName ]
    then
        chmod a-x $fileName
    else
        chmod a+x $fileName
    fi
else
    echo 'Does not exist'
fi
