#!/bin/bash
#This small script I created whenI was working on several files to collect specfic logs of particulat service.


file=("`exec ls | grep 20211023`")
for files in ${file[@]}; do
    exec cat ${files} | grep "gitlab"
done>>gitlab-logs


#This will find the log file of Oct-23-2021 and collect the logs of gitlab service and store in gitlab-logs file
