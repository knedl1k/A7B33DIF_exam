#!/usr/bin/env bash

for i in $(seq 5 133)
do
  # Format the number to have leading zeros (e.g., 5 -> 005, 10 -> 010, 100 -> 100)
  filename=$(printf "%03d.tex" $i)
  touch "$filename"
done
