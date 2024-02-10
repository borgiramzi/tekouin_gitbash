#!/bin/bash


file="/etc/passwd"


third_line=$(head -n 3 "$file" | tail -n 1)

echo "$third_line"

borgiramzi
