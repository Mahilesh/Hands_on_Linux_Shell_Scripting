#!/bin/bash

if [ -e /mahilesh/userinput.sh ];
then 
	echo "File 'userinput.sh' exists"
else 
	echo "File 'userinput.sh' doesn't exist"
fi 

if [ -d /mahilesh ];
then
        echo "Directory 'mahilesh' exists"
else
        echo "Directory 'mahilesh' not exists"
fi

if [ -d /mahilesh/Shell_Scripting ];
then
        echo "Directory 'Shell_Scripting' exists"
else
        echo "Directory 'Shell_Scripting' not exists"
fi

