#!/bin/bash

# this script displays various information to the screen

echo "1-hello from bash script"

# assign a value to a variable 
WORD='script'

# echo word in screen
echo "2-$WORD" 

# demonstrate that single quotes cause variables not to get expanded
echo '3-$WORD'

# combine the variable with hard-coded text
echo "4-this is a shell $WORD"

# display the contents of a variable with a different way
echo "5-this is a shell ${WORD}"

# append text to a variable 
echo "6-${WORD}ing is fun"

# show how not to append text to a variable
# this doesn't work

echo "7-$WORDing is fun"

# Create a new variable 
ENDING="ed"

# combine the two variables 
echo "8-this is ${WORD}${ENDING}"

# change the value stored in ENDING variable (Reassignment)
ENDING='ing'
echo "9-${WORD}${ENDING} is fun"

# Reassign value to ENDING
ENDING='s'
echo "10-You are going to write many ${WORD}${ENDING} in this class"
