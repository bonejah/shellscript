#!/bin/bash
#
# This programa is about subshell and changing commands

cd /tmp
touch file1
ls -l /tmp/file1
pwd

# Assign a date to a variable date
DATA=$(date +%d-%m-%y)
echo ${DATA}

# Create a file with the date
cd ~/Developer/Git/shellscript/scripts
touch file-${DATA}.txt


