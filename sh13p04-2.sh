#!/bin/bash
# Filename: ch13p04-2.sh
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

if [ ! -e logical ]; then
	touch logical 
	echo "Just make a file logical" 
	exit 1 
elif [ -e logical ] && [ -f logical ]; then 
	rm logical 
	mkdir logical 
	echo "remove file ==> logical" 
	echo "and make directory logical" 
	exit 1 
elif [ -e logical ] && [ -d logical ]; then 
	rm -rf logical 
	echo "remove directory ==> logical" 
	exit 1 
else 
	echo "Does here have anything?" 
fi  

