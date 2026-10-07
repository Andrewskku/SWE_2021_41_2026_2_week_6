#!/bin/bash

for file in files/*
do
    filename=$(basename "$file")
    first_letter=${filename:0:1}
    folder=$(echo "$first_letter" | tr 'A-Z' 'a-z')

    mv "$file" "$folder/"
done