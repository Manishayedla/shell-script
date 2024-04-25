#!/bin/bash


USERID=$(id -u) #how do you run a command inside shellscript and take the output
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log  
#temp directory lo scriptname - what time is has been executed 
#creates a log file #where to send it? then we use redirections


R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

VALIDATE() { 

if [ $1 -ne 0 ] 
then 
echo "$2.. FAILURE"
exit 1
else
echo "$2.. SUCCESS"
fi
}

if [ $USERID -ne 0 ] 
then 

echo "Please run this script with root access."
    exit 1 #manually exit if error comes.
else
    echo "You are super user."
fi

echo "All packages: $@"

for i in $@  #when we input values for i then we are runng if else.. by printing package install and if its equal print installed else not installed
do 
echo "package to install: $i"
dnf list installed $i &>>$LOGFILE

if [ $? -eq 0 ]  #if exit status is equal to zero then print already installed...skipping
then
echo -e "$i already installed.. $R SKIPPING $N" 
else
echo -e "$i not installed.. $Y need to install $N"
fi
done