#!/bin/bash

# $1 and $2 are arguments. If we want to change the names of person1 n 2 in future we can use arguemnts instead of change the whole program.
PERSON1=$1 #no space between = and value
PERSON2=$2

#referring variable (we are using it here) (adding $ in front of it to help shell-script to recognise it has a variable and run the prgram )
echo $PERSON1:: "$PERSON2, What are you doing?"
echo $PERSON2:: "$PERSON1, I am studying right now"?
echo $PERSON1:: "What!! Its past you bed time.Go to sleep"
echo $PERSON2:: "Sure, I will!"
echo $PERSON1:: "$PERSON2, Make sure that you'll sleep on time"
echo $PERSON2:: "$PERSON1, sure"