#!/bin/bash

# Input array
arr=(64 34 25 12 22 11 90)

n=${#arr[@]}

# Bubble Sort
for ((i=0; i<n-1; i++))
do
    swapped=false
for ((j=0; j<n-i-1; j++))
    do
        if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
        then
            # Swap
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}
            arr[$((j+1))]=$temp
            swapped=true
        fi
    done
   if [ "$swapped" = false ]
    then
        break
    fi
done

echo "Sorted array: ${arr[@]}"
