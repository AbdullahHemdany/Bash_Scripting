#!/bin/bash

SUM=0

for (( counter=1; counter<=3; counter++ ))
do
	read -p "Enter a Number : " NUMBER
	(( SUM+=NUMBER ))
done

echo "Result is $SUM"
