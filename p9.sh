#!/bin/bash

echo -n "Enter a number : " 
read num
tmp=$num
while [ $num -gt 0 ]
do
	digit=$(( num % 10 ))
	sum=$(( sum + digit ))
	num=$(( num / 10 ))
done

echo "Sum of $tmp = $sum"
