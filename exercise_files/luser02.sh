#!/bin/bash

# header : display UID and username of the user executing this script
# display if the user is the root user or not

# print date
DATE=`date`
echo $DATE

# display UID
echo "Your UID is  : ${UID}"

# display user name
NAME="$(id -un)"
echo "Your name is : $NAME"

# display if the user is the root user or not
if [[ "${UID}" -eq 0 ]] ; 
then 
	echo "you are root";
else
	echo "You arn't root!";
fi


