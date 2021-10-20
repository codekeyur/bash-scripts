#!/bin/bash
read -p "Enter for how many number you want to find an avarage: " N
i=1
sum=0

echo "Enter $N Numbers"
while [ $i -le $N ]
do
  read num               #get number
  sum=$((sum + num))     #sum+=num
  i=$((i + 1))
done

avg=$(echo $sum / $N | bc -l)
printf '%0.3f' "$avg"