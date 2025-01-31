#!/bin/bash/

# Define a list of fruits
fruits=("apple" "banana" "cherry" "date" "fig")

# Use a for loop to iterate over the list of fruits
for fruit in "${fruits[@]}"
do
    echo "I love $fruit!"
done

echo
echo
echo


for i in {1..25}; do
    echo $i
done
