#!/bin/bash

size=$(wc -c $1 | awk '{print $1}')

if [ $size -gt 1000 ]
then
  zip output.zip $1 
else
  echo Not yet
fi
