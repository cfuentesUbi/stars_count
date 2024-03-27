#!/bin/bash

declare -a arr=("freeCodeCamp/freeCodeCamp" "996icu/996.ICU" "EbookFoundation/free-programming-books")
echo "___"
for i in "${arr[@]}"
do
   counted_stars=`curl -s https://api.github.com/repos/$i | jq .stargazers_count`
   echo "$i: $counted_stars"
done

