#!/bin/bash
#filename: sh12-2.sh
# Program
#     use Function to repeat information 
#History
#2016/01/05 Kevin First release
##envirment path 环境变量
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH 

function printit(){
    echo -n "Your choice is "
}

echo "This program will print your selection"

#read -p "Input your choice:" choice
#case $choice in
case $1 in
    "one")
       printit; echo $1 | tr 'a-z' 'A-Z'
       ;;
    "two")
       printit; echo  $1 |tr 'a-z' 'A-Z'
       ;;
     "three")
       printit; echo  $1 |tr 'a-z' 'A-Z'
       ;;
    *)
	echo "Usage $0 {one|two|three}"
    ;;
esac

