#!/bin/bash

echo -n "Enter the process name or pid :"

read process

if [ -z "$process" ]; then

echo " n o input provided.Exiting:"
 exit 1

fi

ps aux | grep -w "$process" | grep -v "grep" || echo " no such process found : $process" 
