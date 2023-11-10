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
    touch "$dir_name/file$i.txt"
done
tar -cvf "$dir_name.tar" "$dir_name"
echo "파일을 압축했습니다."
mv "$dir_name.tar" "$dir_name"
cd "$dir_name"
tar -xvf "$dir_name.tar"
echo "파일을 압축해제했습니다."
mv "$dir_name.tar" "$dir_name"
cd
exit 0