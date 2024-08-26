#!/bin/bash

if [ $# -eq 0 ];
then 
     echo "usage: $0 directory"
     exit 1
fi



directory=$1

if [ ! -d "$1" ];
then 
     echo " $1 is not a  directory "
     exit 1
fi


for file in $1 \*.txt ;
do
   if [ -f "$file" ];
   then
        file_name=$(basename "$file")
        newname="old_file_name"
        mv "$file" "$1/$newname"
   fi
done

echo " files renamed successfully"
