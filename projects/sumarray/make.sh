#!/bin/bash

ENTRY="$(basename $PWD)"

nasm -f macho64 src/asm/"$ENTRY".asm -o build/"$ENTRY".o

gcc -e _main -m64 build/"$ENTRY".o src/c/"$ENTRY".c -o build/"$ENTRY".out

./build/"$ENTRY".out
