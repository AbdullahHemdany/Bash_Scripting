#!/bin/bash

echo -n "Enter Number : "
read NUMBER

if [[ ( "$NUMBER" -lt 10 ) && ( "$NUMBER"%2 -eq 0 ) ]]
then
	echo "Even Number and less than 10."
else
	echo "odd number or greater than 10."
fi 
