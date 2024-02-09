#!/bin/bash
count=0
for n in $(ls -a | grep -E '^d' ); do
    if [ "$n" != "." ] && [ "$n" != ".." ]; then
    ((count++))
    fi
done
echo "$count"
borgiramzi
