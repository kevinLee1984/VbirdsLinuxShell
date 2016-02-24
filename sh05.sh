#!/bin/sbin
#filename: sh05.sh
#Program:
#    this program can check the user input filename
#    (1)exist?;(2)file/dircctory?(3)file permissions
#
#Histroy 
#2015/12/25 kevin First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo -e "Please input a filename," 
echo -e "and this program will check filename's type and permission.\n"
read -p "input a filename please : " filename

test -z $filename && echo -e "You must input a filename" && exit 0

test ! -e $filename && echo "The filename '$filename' DO NOI exist" && exit 0

test -f $filename && filetype="Regulare file"
test -d $filename && filetype="directory"

test -r $filename && perm="readable"
test -w $filename && perm="$perm writable"
test -x $filename && perm="$perm excutable"

echo "The filename:$filename is $filetype"
echo "And the permissions are :$perm"



