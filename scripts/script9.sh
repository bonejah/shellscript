#!/bin/bash

i# This program use while loop
COUNTER=1

while [[ ${COUNTER} -le 100  ]]
do
	echo "NUMBER: ${COUNTER}"
	((COUNTER++))
done

echo "Value COUNTER IS: ${COUNTER}"

