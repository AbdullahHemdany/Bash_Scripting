#!/bin/bash

function Add()
{
	read -p "Enter a first Number  : " NUMBER_1
	read -p "Enter a second Number : " NUMBER_2
	echo "Addition is : $(( NUMBER_1+NUMBER_2 ))"
}

Add
