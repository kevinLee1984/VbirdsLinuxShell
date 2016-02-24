#!/bin/bash
#filename: sh09-2.sh
# Program
#     check $1 is equal to hello by using case ---esac
#History
#2016/01/05 Kevin First release
##envirment path 环境变量
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH 

#read -p "Please input hello" 
:<<BLOCK    //批量注释
if [ "$1" == "hello"   ] ; then 
   echo "Hello ,how are you " 
elif [ "$1" == ""  ]; then
   echo "You Must input parameters, ex> {$0 someword}"
else
   echo "The only parameter is 'hello', ex> {$0 hello}"
fi
BLOCK

case $1 in
    "hello")
    echo  "hello，How are you? "
    ;;
    "")
    echo "You Must input parameters, ex> {$0 someword}"
    ;;
    *)
    echo "Usage $0 {hello}"
    ;;
esac
