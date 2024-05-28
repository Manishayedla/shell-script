#!/bin/bash

DISK_USAGE=$(df -hT | grep xfs) #displays data of xfs
DISK_THRESHOLD=6 #means when the disk space reaches 75% it gives you alerts.

while IFS= read -r line #TO READ EVERYLINE
do
    USAGE=$(echo $line | awk -F " " '{print $6F}' | cut -d "%" -f1) #from diskusage here $line is printing the first line of it.
    FOLDER=$(echo $line | awk -F " " '{print $NF}')

    #condition
    if [ $USAGE -ge $DISK_THRESHOLD ]
    then
    echo "$FOLDER is more than $DISK_THRESHOLD, Current usage: $USAGE"
    fi
       

done <<< $DISK_USAGE

#first the basic command "df -hT | grep xfs" we are putting it in a variable called disk_usage and the lines that variable prints. 
#the printed lines we are trading each line one by one 