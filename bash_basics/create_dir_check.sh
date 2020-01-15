#!/bin/bash

read -p "Enter directory Name : " DIR_NAME

if [[ -d "$DIR_NAME" ]]
then
	echo "Directory Exists."
else
	mkdir ${DIR_NAME}
	echo "Directory Creatd"
fi
