#!/bin/bash
#Filename:ch13p01.sh 
# Program
#     show whoami and print the dictory where is 
#      
#History
#2016/02/01 Kevin First release
##envirment path 环境变量
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH 

whoami=$(whoami)
dict=$(pwd)

echo "My username is $whoami. " 
echo "and I'm in $dict"

