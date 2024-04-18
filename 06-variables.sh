#!/bin/bash

MEDICINE=("DOLO" "CITROGEN" "AZIN")

# size of above array is 3.
# index are 0,1,2

# list always starts with 0.

echo "First Medicine is: ${MEDICINE[0]}"
echo "Second Medicine is: ${MEDICINE[1]}"
echo "Third Medicine is: ${MEDICINE[@]}"