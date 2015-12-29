#!/bin/sh  
#============ get the file name ===========  
Folder_A="."  
for file_a in ${Folder_A}/*; do  
    temp_file=`basename $file_a`
    cp -rf $temp_file ~/$temp_file
    echo $temp_file" copy to ~/"$temp_file
done  