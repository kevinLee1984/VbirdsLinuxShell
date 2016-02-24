#!/bin/sbin
#filename: sh08.sh
#Program:
#    this program  shows the  effect of shift function...
#   #
#Histroy 
#2015/12/29 Kevin First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

#echo "The script name is          ==> $0 "
echo "Total perementer number is  ==> $# "
#[ "$#" -lt 2 ] && echo "The number of perementer is less than 2,stop here"
echo "Your whole perementer is ==>  '$@' "

shift # first "shift"

echo "Total perementer number is  ==> $# "
echo "Your whole perementer is ==>  '$@' "

shift 3 #2nd 3 vars "shift" 

echo "Total perementer number is  ==> $# "
echo "Your whole perementer is ==>  '$@' "
#echo "the 1st perementer is    ==> '$1' "
#echo "the 2nd perementer is    ==> '$2' "
