#!/bin/bash

read -p "Enter a number: " NUMBER_1

read -p "Enter a second number: " NUMBER_2

(( SUM=NUMBER_1+NUMBER_2 ))

echo "Sum: $SUM"
