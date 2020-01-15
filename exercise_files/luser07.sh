#!/bin/bash

# Demonstrate the use of shsift and while loop

# Check if there is parameters passed to script
if [[ "${#}" -eq 0 ]]; 
then 
	echo "Usage : ${0} ARGUMENT_1 [ARGUMENT_2]..."
	exit 1
fi

# Display the first three parameters 
echo "Parameter 1: ${1}."
echo "Parameter 2: ${2}."
echo "Parameter 3: ${3}."

# Loop through all the positional parameters 
while [[ "${#}" -gt 0 ]]
do
	echo "Number of parameters : ${#}"
	echo "Parameter 1 : ${1}"
	echo "Parameter 2 : ${2}"
	echo "Parameter 3 : ${3}"
	echo "--- --- --- --- --- "
	shift
done  
