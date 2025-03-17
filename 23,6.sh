#!/bin/bash

echo "enter the word to highlight:"

read word

echo " enter the filename:"

read filename 

grep --color=auto "$word" "$filename"

