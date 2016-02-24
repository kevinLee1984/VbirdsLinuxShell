#!/bin/bash
#Filename: sh14.sh
# Program
#     this program can loop to calculate 1+2+3+... and show the result. 
#History
#2016/01/06 Kevin First release
##envirment path 环境变量
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH 

s=0
i=0



while [ "$i" != "100" ]
do 
	i=$(($i+1))
	s=$(($s+$i))

done

echo "The result of '1+2+3+...+100'is ==> $s"
