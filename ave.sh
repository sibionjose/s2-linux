#!/bin/bash
echo "Enter 1st number"
read num1
echo "Enter 2st number"
read num2
echo "Enter 3rd number"
read num3
echo "Enter 4rd number"
read num4

sum=$(( num1 + num2 + num3 + num4 ))
average=$((sum/4))

product=$(( num1 * num2 * num3 * num4))
echo "sum: $sum" 
echo "average: $average"
echo "product: $product"

