#!/bin/bash
cd "$1"
FILES=*.mscz
for f in $FILES
do
    FULLFILE=$(realpath "$f") 
    FILENAME=$(basename "$FULLFILE")
    FILENAME="${FILENAME%.*}"
    for ext in ".pdf" ".mid" ".mxl" ".mp3"
    do
        mscore "$f" -o "$FILENAME$ext"
    done
done
