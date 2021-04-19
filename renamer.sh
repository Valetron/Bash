#! /bin/bash

clear
if [[ "$1" = "" ]];
then 
    echo "Directory missed"
    exit 1
fi

my_dir=$1
files=$(find $1 -type f)
dirs=$(find $1 -type d)
file_count=1
dir_count=1

for i in $files
do
#    echo "FILE - $i"
    mv $i $1/file$file_count
    let "file_count += 1"
done

for i in $dirs
do
    if [[ "$i" != "$1" ]];
    #then echo "DIR - $i"
    then 
        mv $i $1/dir$dir_count
        let "dir_count += 1"
    fi
done
#echo "Done"
