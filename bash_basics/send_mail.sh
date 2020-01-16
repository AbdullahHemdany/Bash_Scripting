#!/bin/bash

MAIL="abdullahhemdany@outlook.com"
SUBJECT="welcome from bash"
MESSAGE="welcome to bash scripting"

`mail -s $SUBJECT $MAIL <<< $MESSAGE`
