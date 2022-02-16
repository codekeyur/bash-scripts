#!/bin/bash
file=$1
if [[ $# -lt 1 ]]
then
   echo "Please provide a file name as parameter"
   exit 0
elif [[ -f $file ]] 
then
   cat $file
elif [[ -d $file ]]; then
    echo "Script only accept files, not directories. Exiting script"
    exit 0
fi

