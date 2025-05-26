#!/usr/bin/env bash
OUTPUT_FILE="questions.tex"
DIRECTORY="questions"

> "$OUTPUT_FILE"

for file in "$DIRECTORY"/*.tex; do
   [ -e "$file" ] || continue
  echo "\input{${file%.*}}" >> "$OUTPUT_FILE"
done