#!/bin/bash

FILE='editors.txt'
echo
while read line
do
	echo $line
done < $FILE
echo
