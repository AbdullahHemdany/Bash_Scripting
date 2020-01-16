#!/bin/bash

# Test file Existance

FILE=$1

if [[ -f "$FILE" ]]
then
	echo "File exists in the same directory"
else
	echo "File doesn't exist in the same directory"
fi

