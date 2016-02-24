#!/bin/bash

#filename: sh11.sh
# Program
#    输入日期， 倒计时，计算还有几天 
#History
#2016/01/05 Kevin First release
##envirment path 环境变量
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH 

echo "This program will try to calculate: "
echo "How many days before your setted date"
read -p "Please input you setted date (YYYYMMDD ex >20160105): " date2 

date_d=$(echo ${date2} |grep '[0-9]\{8\}')   # 看看是否有八個數字
if [ "${date_d}" == "" ]; then
	echo "You input the wrong date format...."
exit 1
fi

# 3. 開始計算日期囉～
declare -i date_set=$(date --date="${date2}" +%s)      # 退伍日期秒數
declare -i date_now=$(date +%s)                        # 現在日期秒數
declare -i date_total_s=$((${date_set}-${date_now}))   # 剩餘秒數統計
#declare -i date_total_s=$((${date_now}-${date_set})) 
declare -i date_d=$((${date_total_s}/60/60/24))        # 轉為日數
if [ "${date_total_s}" -lt "0" ]; then                 # 判斷是否已退伍
    echo "Your  had been setted before: " $((-1*${date_d})) " ago"
else
    declare -i date_h=$(($((${date_total_s}-${date_d}*60*60*24))/60/60))
echo "You will wait ${date_d} days and ${date_h} hours to your setted date"
fi

