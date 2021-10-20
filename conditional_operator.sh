#!/bin/bash 

read -p "Enter the one of the character yYnN: " input 
if [[ $input == "n" || $input == "N" ]]; then
   echo "NO"
elif [[ $input == "y" || $input == "Y" ]]; then
   echo "YES"  
fi      
