#!/bin/bash

# To find specific file and assign it to variable x
x=$(find . -name vas.txt)
echo $x

#To search in another direcotry
y=$(find ./test -name Dockerfile)
echo $y

# Find files which ends with .txt in current directory 
## And which are created less than 10min only, assign this to variable `a`
a=$(find . -name "*.txt" -type f -mmin -10)
echo $a

# To find the files accessed within the last 10 minutes, use the -amin option.
## This gives you all files, including this script file..to search requried files always use -name like above
b=$(find . -amin -10 -type f)
echo $b

#Find and Delete Files which starts with `py`
c=$(find . -name "py*" -type f -mmin -10000 -delete)
echo $c