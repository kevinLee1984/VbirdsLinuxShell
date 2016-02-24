#!/bin/sbin
#filename: sh04.sh
#Program:
#    this program can be used as a simple Calculator
#     
#    
#Histroy 
#2015/12/22 kevin First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo -e "Please input 2numbers"
read -p "first number:" firstnu
read -p "second number" secnu
total=$(($firstnu*$secnu))
echo -e "\n the result is ==>$total"
