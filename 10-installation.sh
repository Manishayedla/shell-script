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

if [ $USERID -ne 0 ]
then 
    echo "Installation of mysql is.. FAILURE"
     exit 1 #manually exit if error comes.
else
    echo "Installation of mysql is.. SUCESS"
fi

dnf install git -y
if [ $USERID -ne 0 ]
then 
    echo "Installation of git is.. FAILURE"
     exit 1 #manually exit if error comes.
else
    echo "Installation of git is.. SUCESS"
fi


echo "Is script proceeding??"