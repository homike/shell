#!/bin/sh

# 读取文件，将按照uid归类存入数组，然后顺序输出
cat array.txt | awk -F'|' '$3=='0' {a[$4] += $6} END{for(i in a){print i","a[i]}}' >> uid_num.txt 
