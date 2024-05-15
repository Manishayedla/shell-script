#!/bin/bash


#four things that's good to have are 
#logging(userid,timestamp,scriptname,logfile;
#colors(better to have colors); 
#validate function; 
#if (to check if user is super user or not)

USERID=$(id -u) #root access
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
echo -e "$2.. $R FAILURE $N"
exit 1
else
echo -e "$2.. $G SUCCESS $N"
fi
}

if [ $USERID -ne 0 ] 
then 

echo "Please run this script with root access."
    exit 1 #manually exit if error comes.
else
    echo "You are super user."
fi

dnf install mysql-server -y &>>$LOGFILE
VALIDATE $? "Installing MySQL Server"

systemctl enable mysqld &>>$LOGFILE
VALIDATE $? "Enabling MySQL Server"

systemctl start mysqld &>>$LOGFILE
VALIDATE $? "Starting MySQL Server"

mysql_secure_installation --set-root-pass ExpenseApp@1 &>>$LOGFILE
VALIDATE $? "Setting up root password"

