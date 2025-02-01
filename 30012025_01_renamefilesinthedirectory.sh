#!/bin/bash

#Explanation of this script - cut the word ".txt" from all the filename and insert the word "-backup.txt" to all filename

DIR=/mahilesh/Shell_Scripting/dumpydirectory

cd "$DIR"
echo "before modifcation"
ls -ltrh

for file in *.txt
do 
    mv "$file" "${file%.txt}-backup.txt"
done

echo "after modification"
ls -ltrh
+