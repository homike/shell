#!/bin/bash

function printit() {
        echo "Your choice is $1"  # $1 是函数的第一个参数, 注意不是脚本的输入参数
}

case $1 in
"one")
        printit 1  # printit 的输入参数 1
        ;;
"two")
        printit 2
        ;;
"three")
        printit 3
        ;;
*)
        echo "Usage $0 {one|two|three|"
        ;;
esac
