#!/bin/bash

echo "Enter the file name that you want to read: " 
read FILE

while read -r LINE; do
   echo "$LINE" 
done <  ${FILE}
