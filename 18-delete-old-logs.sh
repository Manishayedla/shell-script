#!/bin/bash

SOURCE_DIRECTORY=/tmp/app-logs


R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"


#when working with directories and folders you to need to check if it exists or not in the first place.
if [ -d $SOURCE_DIRECTORY ]
then 
echo -e "$G Source directory exists $N"
else
echo -e "$R Please make sure $SOURCE_DIRECTORY exists $N"
exit 1
fi

