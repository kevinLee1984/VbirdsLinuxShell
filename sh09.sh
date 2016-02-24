#!/bin/bash
#filename: sh09.sh
# Program
#     check $1 is equal to hello
#History
#2015/12/29 Kevin First release
##envirment path 环境变量
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH 

#read -p "Please input hello" 

if [ "$1" == "hello"   ] ; then 
   echo "Hello ,how are you " 
elif [ "$1" == ""  ]; then
   echo "You Must input parameters, ex> {$0 someword}"
else
   echo "The only parameter is 'hello', ex> {$0 hello}"
fi
