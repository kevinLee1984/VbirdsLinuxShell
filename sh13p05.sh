#!/bin/bash
# Program
#     this program can get /etc/passwd first cloumn
#     echo as " The 1 account is "root"  " 1 means line number
#History
#2016/02/17 Kevin First release
##envirment path 环境变量
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH


i=1
j=`wc -l /etc/passwd|awk '{print $1}'`
#上面外面的单引号“｀”是键盘上“～”按键下面的那面那个符号
while [ $i -le $j ]
do
	 echo "The $i account is "`sed -n ${i}p /etc/passwd|cut -d : -f 1`
 	 let i++
done



