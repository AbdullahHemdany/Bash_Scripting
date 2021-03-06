#!/bin/bash

# this script generates a random password for each user specified on
# command line

# Display what the user typed on the command line.
echo "You executed this command: ${0}"

# display the path and the file name of the script 
echo "You used $(dirname ${0}) as the path to the $(basename ${0}) script"

# tell them how many arguments the passed in
# ( inside the script they are parameters , outside they are arguments)
NUMBER_OF_PARAMETERS="${#}"
echo "you supplied ${NUMBER_OF_PARAMETERS} arguments(s) on command line"

# Make sure they at least supply one argument
if [[ "${NUMBER_OF_PARAMETERS}" -lt 1 ]]
then
	echo "Usage : ${0} USER_NAME [USER_NAME]..."
	exit 1
fi

# Generate and display a password for each parameter
for USER_NAME in "${@}"
do
	PASSWORD=$(date +%s%N${RANDOM} | sha256sum | head -c48)
	echo "${USER_NAME} : ${PASSWORD}"
done


# 

