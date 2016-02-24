#!/bin/sbin
#Program:
#    this program create three files ,which named by user's input
#    and date by command 
#    
#Histroy 
#2015/12/21 kevin First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

#1、让使用者输入文件名，并且取得fileuser 这个变量
echo -e "please use 'touch'command to create three files."
read -p "Please input you filename:"  fileuser  #提示使用者输入

#2、为了避免使用者随意按Enter，利用变量功能分析文档名称是否正确
#filename=${fileuser.-"filename"}  # 判断是否正确输入

filename=${fileuser:-"filename"}

#date1=$(date --date='2 days ago' + %y%m%d)  #2days ago
date1=$(date --date='2 days ago' +%Y%m%d)
date2=$(date --date='1 days ago' +%Y%m%d)  #1days ago
date3=$(date +%Y%m%d)  #today

file1=${filename}${date1}
file2=${filename}${date2}
file3=${filename}${date3}

touch "$file1"
touch "$file2"
touch "$file3"
