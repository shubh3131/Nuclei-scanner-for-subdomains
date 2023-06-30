#!/bin/bash

# Author: shubh3131
# Date Created: 16/04/2023
# Last Modified: 17/04/2023

# Description:
# This script takes a list of URLs from a file and runs the "nuclei vuln scanner" against each one of them and saves the results for each URL in a dedicated .txt file.

# Usage: ./nuclei.sh

read -p "Enter the complete path of the target url file: " target_file_path

read -p "Enter the complete path of the destinator folder: " destination_folder_path


readarray -t targets < "$target_file_path"



for target in "${targets[@]}"; do
        filename=$( echo "$target" | cut -d '.' -f 1 )
        nuclei -target "$target" -t $HOME/nuclei-templates >> "$destination_folder_path"/"$filename".txt
        echo
        echo "---------------------- Vuln Scan for $target completed!!-------------------------"
done
exit 0
