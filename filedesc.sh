#!/bin/bash
#file descriptor is a just numerical represtation of a file that we want read or write into.
#0,1 and 2 are system reserved numbers for stdin, stdout and stderr respectively so have to use number >3 as file descriptor.

echo "Enter a file to read: "
read FILE

#To read file use <
#To write to a file >
#Both read and write <>

exec 5<>$FILE

#reading to file using descriptor

while read -r LINE; do
  echo "$LINE"
done <&5           #Need to use & if you are using a file descriptor

echo "${FILE} Was Read On: `date` " >&5    #Writing to File
exec 5>&-       $Closing the file descriptor

