#!/bin/bash

echo "Checking if the file is exist or not."

FILENAME=$1

if [ -a "${FILENAME}" ]; then
   echo "${FILENAME} is exist and you cannot create the same file."
else
   `touch "${FILENAME}"`
    echo "${FILENAME} does not exist, hence created one. Please verify by using 'ls' command."
fi
