#!/bin/bash
#Filename:ch13p03.sh 
# Program
#     caculation the number 1+2+3+... user input number 
#      
#History
#2016/02/15 Kevin First release
##envirment path 环境变量
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH 


s=0
i=0

read -p "Please input a number bigger than 3: " number

num_chk=$(echo $number | grep '[0-9]')
if [ "$num_chk" == ""  ];  then
	echo "You have to input a number"
	exit 1
fi

while [ "$i" != "$number" ]
do 
	i=$(($i+1))

	s=$(($s+$i))

done

echo "The result of '1+2+...+$number 'is ==> $s"

