#!/bin/bash

MEDICINE=("DOLO" "CITROGEN" "AZIN") #who can add the whole list here within double quotes and spaces)

# size of above array is 3. #size always starts from 1,2,3...)
# index are 0,1,2

# list always starts with 0.

echo "First Medicine is: ${MEDICINE[0]}"
echo "Second Medicine is: ${MEDICINE[1]}"
echo "Third Medicine is: ${MEDICINE[2]}"

echo "All the Medicine that you need today are: ${MEDICINE[@,]}" #@ means gives the list of all the given values