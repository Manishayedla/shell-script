#!/bin/bash

COURSE="DevOps from Current Script"


echo "DevOps calling other script, course: $COURSE"
echo "Process ID of current shell script: $$"

source ./16-other-script.sh

#after calling other script we are calling again.

echo "Afterr calling other scriptt, course: $COURSE"





