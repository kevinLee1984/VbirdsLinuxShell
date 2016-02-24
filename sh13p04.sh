#!/bin/bash
# Filename: ch13p04.sh
# Program
#     先确认/root/test/logical 这个名称是否存在，若不存在，
#     则用touch创建一个文件,创建完成后离开。
#     若存在，
#     若是文件，则删除后新建一个logical目录，完成后离开。
#     若是目录，则删除后离开。
# History
# 2016/02/54 Kevin First release
##envirment path 环境变量
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH 

#read -p "Please input a directory: " dir

name="/root/test/logical"
name1="/root/test"

if [ ! -e $name ];then
#	echo "The $name is NOT exist in your system"
	echo "I'll touch $name File"
#	touch /root/test/logical
	touch $name
#	exit 1
elif [ -f $name ];then
	echo "I'll remove $name File" 
	echo "and make a $name Dictory"
	rm -rf $name
	mkdir $name
#	exit 1
elif [ -d $name ];then
	echo "I'll remove $name Dictory"
	rm -rf $name
#	exit 1
fi
echo "Now show what does '$name1' have now"
ls -al   $name1

