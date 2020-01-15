#!/bin/bash

# using else-if script example

# read user input
read -p "Enter a Number : " NUMBER

# check if NUMBER is less than or equal 10 
if [[ "$NUMBER" -le 10 ]]
then
	echo "Number is less than or equal 10."
# check if NUMBER is less than or equals 100
elif [[ "$NUMBER" -le 100 ]]
then
	echo "Number is less than or equal 100."
# else Number is Greater than 100 :D
else
	echo "Number is greater than 100"
fi 
