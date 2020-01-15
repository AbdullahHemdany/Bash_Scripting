#!/bin/bash

# accept user input and store it in variable
echo -n "Enter any number : "
read NUMBER

# check if NUMBER is equal 15 OR NUMBER is equal 45
if [[ ( "$NUMBER" -eq 32 ) || ( "$NUMBER" -eq 64 ) || ( "$NUMBER" -eq 86 ) ]]
then
	echo "Supported!"
else
	echo "NOT SUPPORTED!"
fi

