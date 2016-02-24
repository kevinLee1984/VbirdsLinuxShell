#!/bin/bash
#filename: sh10.sh
# Program
#     using netstat & grep to detect www,ssh,ftp,and mail services 
#History
#2015/12/29 Kevin First release
##envirment path 环境变量
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH 

echo "I will detect your linux service!"
echo -e "The WWW,SSH,FTP,and Mail will be detect!\n"


testing=$(netstat -tuln | grep ":80")
if [ "$testing" != ""   ] ; then 
   echo "WWW is running in your Linux system!  " 
fi


testing=$(netstat -tuln | grep ":22")
if [ "$testing" != ""   ] ; then 
   echo "SSH is running in your Linux system!  " 
fi 

testing=$(netstat -tuln | grep ":21")
if [ "$testing" != ""   ] ; then 
   echo "FTP is running in your Linux system!  " 
fi


testing=$(netstat -tuln | grep ":25")
if [ "$testing" != ""   ] ; then 
   echo "Mail  is running in your Linux system!  " 
fi 
