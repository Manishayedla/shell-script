#!/bin/bash


USERID=$(id -u) #how do you run a command inside shellscript and take the output


if [ $USERID -ne 0 ]
then 

echo "Please run this script with root access."
    exit 1 #manually exit if error comes.
else
    echo "You are super user."
fi

dnf install mysql -y