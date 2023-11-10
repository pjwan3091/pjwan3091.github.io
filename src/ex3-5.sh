#!/bin/sh
Func () {
    echo "함수 안으로 들어왔습니다."
	ls
	return
}
echo "프로그램을 시작합니다."
Func
echo "프로그램을 종료합니다."
exit 0