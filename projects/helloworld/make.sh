#!/bin/bash

ENTRY="$(basename $PWD)"

nasm -f macho64 src/"$ENTRY".asm -o build/"$ENTRY".o

ld -e _main -macosx_version_min 10.8 -arch x86_64 build/"$ENTRY".o -lSystem -o build/"$ENTRY".out

./build/"$ENTRY".out

