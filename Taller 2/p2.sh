#!/bin/bash

cd testDir

arr1=($(cat txt1.txt))
arr2=($(cat txt2.txt))

for idx in "${!arr1[@]}"; do 
    arr3[idx]=$(( arr1[idx] + arr2[idx] ))
done

echo ${arr3[@]} > p2.txt



