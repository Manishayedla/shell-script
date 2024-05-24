#!/bin/bash

COURSE="DevOps from Current Script"


echo "DevOps calling other script, course: $COURSE"
echo "Process ID of current shell script: $$"

./16-other-script.sh

#after calling other script we are calling again.

echo "After calling other script, course: $COURSE"





