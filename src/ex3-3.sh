#!/bin/sh
height=$(echo "scale=2; $2 / 100" | bc)
bmi=$(echo "scale=2; $1 / ($height * $height)" | bc)
low=$(echo "$bmi < 18.5" | bc)
standard=$(echo "$bmi < 23" | bc)
if [ $low -eq 1 ]
then
    echo "저체중입니다."
elif [ $standard -eq 1 ]
then
    echo "정상체중입니다."
else
    echo "과체중입니다."
fi
exit 0