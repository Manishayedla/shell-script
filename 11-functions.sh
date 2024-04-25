#!/bin/bash


USERID=$(id -u) #how do you run a command inside shellscript and take the output
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log  
#temp directory lo scriptname - what time is has been executed 
#creates a log file #where to send it? then we use redirections

R="\e[31m"
G="\e[32m"
N="\e[0m"


echo "Script started executing at: $TIMESTAMP"

#VALIDATE IS A FUNC NAME
#DECLARATION OF FUNC SYNTAX
VALIDATE() { 

if [ $1 -ne 0 ] 
then 
echo -e "$2...$R FAILURE $N"
exit 1
else
echo -e "$2..$G SUCCESS $N"
fi
}


#validating user
if [ $USERID -ne 0 ] 
then 

echo "Please run this script with root access."
    exit 1 #manually exit if error comes.
else
    echo "You are super user."
fi

dnf install mysql -y  &>>$LOGFILE
VALIDATE $? "Installing mysql"

dnf install git -y &>>$LOGFILE
VALIDATE $? "Installing GIT"


echo "Is script proceeding??"