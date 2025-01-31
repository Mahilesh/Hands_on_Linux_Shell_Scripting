#!/bin/bash

#Find the first 10 biggest files in the file system and write the output to a file.

OUTPUT_FILE=/tmp/10_biggest_files.txt

find / -type f -exec du -sh {} + 2>/dev/null | sort -rh | head -n10 > $OUTPUT_FILE

echo "Top 10 biggest files have been saved $OUTPUT_FILE"
