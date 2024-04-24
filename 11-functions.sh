#!/bin/bash


USERID=$(id -u) #how do you run a command inside shellscript and take the output


#VALIDATE IS A FUNC NAME
#DECLARATION OF FUNC SYNTAX
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

dnf install mysql -y &>>$LOGFILE
VALIDATE $? "Installing mysql"

dnf install git -y &>>$LOGFILE
VALIDATE $? "Installing GIT"


echo "Is script proceeding??"