#! /bin/bash

HOME_DIR=$HOME

printf '%-20s %-10s %-10s %-15s\n' "File name" "Date" "Time" "Permission"

normal_file_count=0
directory_count=0
for file in "$HOME_DIR"/*
do
  filename=$(basename "$file")
  date=$(date +%Y-%m-%d -r "$file")
  time=$(date +%H:%M:%S -r "$file")
  permission=$(stat -c "%a" "$file")

  printf '%-20s %-10s %-10s %-15s\n' "$filename" "$date" "$time" "$permission"

  if [ -f "$file" ]; then
    normal_file_count=$((normal_file_count+1))
  elif [ -d "$file" ]; then
    directory_count=$((directory_count+1))
  fi
done

total_file_count=$((normal_file_count+directory_count))
echo "Total no. of files : $total_file_count"
echo "Total no. of normal files : $normal_file_count"
echo "Total no. of directories : $directory_count"
