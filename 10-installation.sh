#!/bin/bash


USERID=$(id -u) #how do you run a command inside shellscript and take the output


if [ $USERID -ne 0 ]
then 

echo "Please run this script with root access."
    
else
    echo "You are super user."
fi

dnf install mysql -y

echo "Is script proceeding"