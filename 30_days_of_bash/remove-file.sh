#!/bin/bash

echo "Do you want to remove all bash scripts ? Please Enter 1 for 'yes' and 0 for 'no' : "
read USERINPUT

if [[ $USERINPUT -eq 1 ]]
then
  files=*
  for file in $files
  do
    if [[ -f $file ]] && [[ $file == day*.sh ]]
    then  
       rm $file
    else
       echo "No Such file exist ! "
    fi
  done
  echo "All bash scripts were removed."
  ls
else
  exit 
fi

