#!/bin/bash

echo "enter the filename to remove all permissions:"

read filename

chmod 000 "$filename"

echo "all permissions removed from $filename."


