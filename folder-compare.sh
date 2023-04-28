#!/bin/bash

# Part 1: Check for differences in files/folders that don't exist in either folder
echo "Part 1: Differences in files/folders that don't exist in either folder (excluding .git directory)"
echo "--------------------------------------------------------------------"

diff -rq --exclude=.git $1 $2 | grep -E '^(Files|Only in)' --color=auto

# Part 2: Compare files and output differences
echo
echo "Part 2: Compare files and output differences (excluding .git directory)"
echo "--------------------------------------------"

echo "Comparing files:"
for file1 in $(find $1 -type f ! -path '*/.git/*')
do
    file2="$2/${file1#$1/}"
    if [ -f $file1 ] && [ -f $file2 ]
    then
        diff_output=$(diff $file1 $file2)
        if [ -n "$diff_output" ]
        then
            echo "Differences found in file: ${file1#$1/}"
            echo "$diff_output"
        fi
    fi
done
