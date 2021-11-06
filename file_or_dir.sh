#!/bin/bash

INPUT=$1

if [[ -a "${INPUT}" ]]; then
  echo "${INPUT} is exist, now lets check whether its a file or directory."

   if [[ -f "${INPUT}" ]]; then
     echo "${INPUT} is a file"
   exit 2
   elif [[ -d "${INPUT}" ]]; then
     echo "${INPUT} is a directory"
   
   exit 1
   ls -l ${INPUT}
   fi
 else
  echo "Sorry ${INPUT} does not exist" 
fi
 

