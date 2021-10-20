#!/bin/bash

read -p "Enter value of X: " X
read -p "Enter value of Y: " Y
read -p "Enter value of Z: " Z

if [[ $X -eq $Y && $Y -eq $Z ]]; then
   echo "EQUILATERAL"
elif [[ $X -eq $Y || $X -eq $Z || $Y -eq $Z ]]; then
   echo "ISOSCELES"
else
   echo "SCALENE"
fi        

