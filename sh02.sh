#!/bin/sbin
#Program:
#    User can input his first name and last name.
#    Program can shows his full name.
#Histroy 
#2015/12/21 kevin First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

read -p "Please input your first name:" firstname  #提升使用者输入
read -p "Please input your first name:" lastname   #提示使用者输入

echo -e "\nYour full name is $firstname $lastname"  #屏幕输出结果
