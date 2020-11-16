#!/bin/bash

RED="\033[1;31m"
BLUE="\e[34m"
GREEN="\e[92m"
YELLOW="\e[93m"
NOCOLOR="\033[0m"

echo
echo "This script was writen by Volodymyr Verkholyak v.0.1"
echo "Git-Script make push changes as user 'tester' to the main branch 'master'"
echo "Read the short manual before using:"
echo "      --1       key change main index.html, Example 1"
echo "      --2       key change main index.html, Example 2"
echo "      --3       key change main index.html, Example 3"
echo "      --e       key change main index.html, Example error"
echo "      --exit    key you will leave the program"
echo "      --man     key you will read short manual"
echo

home_dir=`pwd`

function write_argument()
{
    if  [[ $argument == "--1" ]]
    then
        argument_1
    elif [[ $argument == "--2" ]]
    then
        argument_2
    elif [[ $argument == "--3" ]]
    then
        argument_3
    elif [[ $argument == "--e" ]]
    then
        argument_e
    elif [[ $argument == "--man" ]]
    then
        man
    elif [[ $argument == "--exit" ]]
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

function argument_1()
{
    git checkout tester
    cp $home_dir/examlpe-index/index-1.jsp $home_dir/webapp/src/main/webapp/index.jsp
    git add index.jsp
    git commit -m "change index-1"
    git push --all
    git checkout master
    git merge tester
    git checkout --theirs .
    git add .
    git commit -m "merge tester changes 1"
    git push --all
    echo
    read -p "$(echo -e ${RED}Enter Your Key: ${NOCOLOR})" argument
    echo
    write_argument
}

function argument_2()
{
    git checkout tester
    cp $home_dir/examlpe-index/index-2.jsp $home_dir/webapp/src/main/webapp/index.jsp
    git add index.jsp
    git commit -m "change index-2"
    git push --all
    git checkout master
    git merge tester
    git add .
    git commit -m "merge tester changes 2"
    git push --all
    echo
    read -p "$(echo -e ${RED}Enter Your Key: ${NOCOLOR})" argument
    echo
    write_argument
}

function argument_3()
{
    git checkout tester
    cp $home_dir/examlpe-index/index-3.jsp $home_dir/webapp/src/main/webapp/index.jsp
    git add index.jsp
    git commit -m "change index-3"
    git push --all
    git checkout master
    git merge tester
    git add .
    git commit -m "merge tester changes 3"
    git push --all
    echo
    read -p "$(echo -e ${RED}Enter Your Key: ${NOCOLOR})" argument
    echo
    write_argument
}

function argument_e()
{
    git checkout tester
    cp $home_dir/examlpe-index/index-error.jsp $home_dir/webapp/src/main/webapp/index.jsp
    git add index.jsp
    git commit -m "change index-e"
    git push --all
    git checkout master
    git merge tester
    git add .
    git commit -m "merge tester changes e"
    git push --all
    echo
    read -p "$(echo -e ${RED}Enter Your Key: ${NOCOLOR})" argument
    echo
    write_argument
}

function man()
{
    echo "Git-Script make push changes as user 'tester' to the main branch 'master'"
    echo "Read the short manual before using:"
    echo "      --1       key change main index.html, Example 1"
    echo "      --2       key change main index.html, Example 2"
    echo "      --3       key change main index.html, Example 3"
    echo "      --e       key change main index.html, Example error"
    echo "      --exit    key you will leave the program"
    echo "      --man     key you will read short manual"
    echo
    read -p "$(echo -e ${RED}Enter Your Key: ${NOCOLOR})" argument
    echo
    write_argument
}

write_argument
exit
