#!/bin/bash

DISK_USAGE=$(df -hT | grep xfs) #displays data of xfs
DISK_THRESHOLD=6 #means when the disk space reaches 75% it gives you alerts.
MESSAGE=""

while IFS= read -r line #TO READ EVERYLINE
do
    USAGE=$(echo $line | awk -F " " '{print $6F}' | cut -d "%" -f1) 
    #from diskusage here $line is printing the first line of it.
    #usage is printing the 6th field with out "%"
    FOLDER=$(echo $line | awk -F " " '{print $NF}') #folder is printing the last value od the field

    #condition
    if [ $USAGE -ge $DISK_THRESHOLD ]
    then
    MESSAGE+="$FOLDER is more than $DISK_THRESHOLD, Current usage: $USAGE"
    fi
       

done <<< $DISK_USAGE

echo "Message: $MESSAGE"

#first the basic command "df -hT | grep xfs" we are putting it in a variable called disk_usage and the lines that variable prints. 
#the printed lines we are trading each line one by one 

#output
#/ is more than 6, Current usage: 32
#/var is more than 6, Current usage: 17
#/boot is more than 6, Current usage: 53


#"df -hT | grep xfs"
#/dev/mapper/RootVG-rootVol   xfs       6.0G  1.9G  4.1G  32% /
#/dev/mapper/RootVG-homeVol   xfs       960M   40M  921M   5% /home
#/dev/mapper/RootVG-varVol    xfs       2.0G  320M  1.7G  17% /var
#/dev/mapper/RootVG-logVol    xfs       2.0G   92M  1.9G   5% /var/log
#/dev/mapper/RootVG-varTmpVol xfs       2.0G   47M  1.9G   3% /var/tmp
#/dev/mapper/RootVG-auditVol  xfs       4.4G   75M  4.3G   2% /var/log/audit
#/dev/xvda3                   xfs       424M  223M  202M  53% /boot

#creating message variable on the top. in place of echo printing we are adding variable message line 17
#and out of the loop echo "" line 23

