#!/bin/bash

#addition of two number

NO1=$1
NO2=$2

SUM=$(($NO1+$NO2))  #we should use $ then only shell will trate it as an expresion

echo "Total of $NO1 and $NO2 is: $SUM"