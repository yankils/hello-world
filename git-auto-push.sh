#!/bin/bash

RED="\033[1;31m"
BLUE="\e[34m"
GREEN="\e[92m"
YELLOW="\e[93m"
NOCOLOR="\033[0m"

echo
echo "This script was writen by Volodymyr Verkholyak v.0.1"
echo "IMPORTANT !!! Run the script as a root !!!"
echo "Read the short manual before using:"
echo "      --all     key displays the IP addresses symbolic names of all hosts in the current subnet"
echo "      --target  key displays a list of open system TCP ports."
echo "      --exit    key you will leave the program"
echo "      --man     key you will read short manual"
echo

home_dir=`pwd`

function write_argument()
{
    if   [ $argument == "--all" ]
    then
        all_argument
    elif [ $argument == "--target" ]
    then
        target_argument
    elif [ $argument == "--man" ]
    then
        man
    elif [ $argument == "--exit" ]
    then
        echo -e "${BLUE}.......................................... Bye !${NOCOLOR}\n"
        exit
    else
        echo -e "${BLUE}Wrong Key !!! Please read the manual (--man) !!!${NOCOLOR}\n"
        read -p "$(echo -e ${RED}Enter Your Key: ${NOCOLOR})" argument
        echo
        write_argument
    exit
    fi
}

function all_argument()
{
    git checkout tester
    mv $home_dir/examlpe-index/index-1.jsp $home_dir/webapp/src/main/webapp/index.jsp
    git add index.jsp
    git commit -m "change index-1"
    git push --all
    git checkout master
    git merge tester
    git add .
    git commit -m "merge tester changes"
    git push --all
    echo
    read -p "$(echo -e ${RED}Enter Your Key: ${NOCOLOR})" argument
    echo
    write_argument
}

write_argument
exit
