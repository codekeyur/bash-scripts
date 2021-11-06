#!/bin/bash


echo "Enter how many times you want to display 'Hello World' message."
read DISPLAYNUMBER

COUNT=1
while [ ${COUNT} -le ${DISPLAYNUMBER} ]; do
     INCREMENT=COUNT++  
     echo "${INCREMENT} Hello World" 
done
