#!/bin/sbin
#filename: sh06-3.sh
#Program:
#    this program can show the users choice
#    with if elseif
#
#Histroy 
#2015/12/29  Kevin First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

read -p "Please input (Y/N): " yn

#[ "$yn" == "Y" -o "$yn" == "y" ] && echo "OK,Continute" && exit 0
if [ "$yn" == "Y" ] || [  "$yn" == "y" ] ; then
    echo "OK,Continute" 
#    exit 0
#fi

elif [ "$yn" == "N" ] || [  "$yn" == "n" ] ; then
    echo "Oh,interrupt" 
#    exit 0
#fi
#[ "$yn" == "N" -o "$yn" == "n" ] && echo "Oh! interrput" && exit 0
else
echo "I don't know what your choice is " && exit 0
fi

