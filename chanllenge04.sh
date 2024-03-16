#!/bin/bash

# Script Name:                  ops201-challenge04-arrays
# Author:                       julian pena
# Date of latest revision:      03/15/2024
# Purpose:                      creating script that creates 4 directories and cretae a new text file in each directories

# Declaration of variables
file=("file1" "file2" "file3" "file4") 
mkdir=("dir1" "dir2" "dir3" "dir4")
# Declaration of functions


# Main
echo "creating directory ${mkdir[2]} with txt ${file[2]} inside"
mkdir dir3 
cd dir3
touch file3 
cd ..
echo "creating directory ${mkdir[0]} with txt ${file[0]} inside"
mkdir dir1 
cd dir1
touch file1 
cd ..
echo "creating directory ${mkdir[1]} with txt ${file[1]} inside"
mkdir dir2 
cd dir2
touch file2
cd ..
echo "creating directory ${mkdir[3]} with txt ${file[3]} inside"
mkdir dir4
cd dir4
touch file4

# End