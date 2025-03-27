#!/bin/bash

echo -n "enter the process name to count :"

read process
count=$(ps aux | grep -w "$process" | grep -v "grep" | wc - 1 )

echo "number of running instance of "$process": $count"
