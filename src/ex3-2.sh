#!/bin/sh
case "$2" in
  +)
    echo `expr $1 + $3`;;
  -)
    echo `expr $1 - $3`;;
  *)
    echo "다시 입력해주세요.";;
esac
exit 0