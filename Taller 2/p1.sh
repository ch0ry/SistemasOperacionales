#!/bin/bash

mkdir testDir

cd testDir

vec=(1 2 3 4 5)

echo ${vec[@]:0:5} > txt1.txt 

cp txt1.txt txt2.txt

