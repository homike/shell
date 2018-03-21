#!/bin/bash

case $1 in
"hello")
        echo "Hello world"
        ;;      # <-- 结尾必须有两个分号
"")
        echo "empty parameters"
        ;;
*)              # 匹配无穷多个任意字符
        echo "Usage $0 {hello}"
        ;;
esac
