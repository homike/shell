#!/bin/bash

read -p "first number " firstN
read -p "second number" secondN

# var=$((运算内容)) , 来进行计算。
# 注意双括号(()), =左右不能有空格
total=$(($firstN*$secondN))

echo -e "\nThe result of $firstN * $secondN is $total"
