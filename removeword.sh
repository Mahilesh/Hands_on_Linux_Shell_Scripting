#!/bin/bash

cd /mahilesh/Shell_Scripting/dumpydirectory
echo "before modifcation"
ls -ltrh

for file in *.txt
do
    mv "$file" "${file%.txt}"
done

echo "after modification"
ls -ltrh

