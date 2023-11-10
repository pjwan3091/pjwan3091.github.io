#!/bin/bash

dir_name=$1

if [ ! -d "$dir_name" ]; then
    mkdir "$dir_name"
    echo "'$dir_name'폴더를 생성했습니다."
else
    echo "'$dir_name'폴더가 이미 존재합니다."
fi

for i in 0 1 2 3 4
do
    mkdir "$dir_name/file$i"
    touch "$dir_name/file$i.txt"
    ln -s "$dir_name/file$i.txt" "$dir_name/file$i/file$i.txt"
done

exit 0