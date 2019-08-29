#!/bin/bash

# Check age user

# Message welcome
echo "Welcome to our program read age user $0"

# Read message user
echo "How old are you?"
read IDADE

# Make the test using if
if [[ ${IDADE} -ge 18 ]]
then 
	echo "You are ${IDADE} years or more."
elif [[ ${IDADE} -ge 16 ]]
then
	echo "You are ${IDADE} between 16 or 17"  	
else
	echo "You aren't 18 years old yet."
fi


