#!/bin/bash

# Input array
arr=(64 34 25 12 22 11 90)

n=${#arr[@]}

# Bubble Sort
for ((i=0; i<n-1; i++))
do
    swapped=false
