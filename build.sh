#!/bin/bash
# echo off
# exec > /dev/null 2>&1

# Compile C++ code

# echo "Enter the name of the file to compile: "
# read file

# Compile program in build directory
mkdir -p  build
cd build

printf "\n"
g++ -std=c++11 -o $1 ../$1.cpp

# print Compiled successfully message if no errors
# if [ $? -eq 0 ]; then
#     echo "Compiled successfully!"
# fi

# Run the program
./$1
printf "\n"

# Remove the executable file
# cd ..
# rm -rf build