#!/bin/bash
#Filename: sh13.sh
# Program
#     this program can repeat question util the user input the correct answer 
#History
#2016/01/06 Kevin First release
##envirment path 环境变量
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH 

while [ "$yn" != "yes" -a "$yn" != "YES"  ]
do 
    read -p "Please input yes/YES to stop this program:" yn 
done

echo "OK ,you have input the correct answer!"
