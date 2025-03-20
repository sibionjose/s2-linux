#!/bin/bash

echo "enter the filaname:"

read filename

wc -w < "$filename"

