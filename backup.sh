#!/bin/bash

source_dir="/mnt/c/Users/F7660392/OneDrive - Saint-Gobain/todo/fatima"
destination_dir="/mnt/c/Users/F7660392/OneDrive - Saint-Gobain/todo/test"

timestamp=$(date +"%Y%m%d%H%M%S")

destination="$destination_dir/backup_$timestamp.tar.gz"
mkdir -p "$destination_dir"
tar -czf "$destination" -C "$source_dir" .
echo "Backup of $source_dir completed at $timestamp"
