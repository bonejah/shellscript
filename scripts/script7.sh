#!/bin/bash

# Test if user has root permission

if [[ ${UID} -eq 0 ]]
then
	echo "You have root permission."
else 
	echo "Please turn on root to use this program!!!"
fi


