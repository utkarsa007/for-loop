#!/bin/bash
n=$1
sum=0
for (( i=1; i<=n; i++ ))
do

if [ $i -lt $n ]
then
echo -n " 1/$i +"
else
echo  " 1/$i"
fi

arr[i]=1/$i

sum=`ps -ef | awk "BEGIN {print $sum+${arr[i]}}"`
done

echo "Sum = $sum"

