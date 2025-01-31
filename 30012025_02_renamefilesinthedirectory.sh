#!/bin/bash

#Just adding ".txt" to all filename

DIR=/mahilesh/Shell_Scripting/dumpydirectory

cd "$DIR"
echo "before modifcation"
ls -ltrh

for file in *
do 
    mv "$file" "${file}.txt"
done

echo "after modification"
ls -ltrh
