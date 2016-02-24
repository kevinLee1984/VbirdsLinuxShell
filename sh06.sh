#!/bin/sbin
#filename: sh06.sh
#Program:
#    this program can show the users choice
#   #
#Histroy 
#2015/12/28 Kevin First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

read -p "Please input (Y/N): " yn
#[ "$yn" == "Y" -o "$yn" == "y" ] && echo "OK,Continute" && exit 0
[ "$yn" == "Y" ]||[  "$yn" == "y" ] && echo "OK,Continute" && exit 0
[ "$yn" == "N" -o "$yn" == "n" ] && echo "Oh! interrput" && exit 0
echo "I don't know what your choice is " && exit 0
