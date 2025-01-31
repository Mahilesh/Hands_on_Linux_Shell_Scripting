#!/bin/bash
DIR1=mahilesh
DIR2=Shell_Scripting
File1=userinput.sh 

if [ -e /$DIR1/$File1 ];
then
        echo "File '$File1' exists"
else
        echo "File '$File1' doesn't exist"
fi

if [ -d /$DIR1 ];
then
        echo "Directory '$DIR1' exists"
else
        echo "Directory '$DIR1' not exists"
fi

if [ -d /$DIR1/$DIR2 ];
then
        echo "Directory '$DIR2' exists"
else
        echo "Directory '$DIR2' not exists"
fi

