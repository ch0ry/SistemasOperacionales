#!/bin/bash

echo Tipos de archivo:

file $1

file $2

echo Diferencia bits:

cmp -b $1 $2

echo Diferencia lineas:

diff -u $1 $2
