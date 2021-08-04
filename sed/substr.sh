#!/bin/sh

# 截取 123499999
echo "xxx [uid:1234] xxxx" | sed 's/.*\[uid:\([0-9]*\)\].*/\1/g' 

# 截取 123499999, failed
echo "xxx [uid:1234] xxxx(failed)" | sed 's/.*\[uid:\([0-9]*\)\].*(\(.*\))/\1 \2/g'

# 截取 1234
echo "val1=1.0&va2=xxx&val3=xxx3&uid=1234" | \
    awk -F'&' '{for(i=1;i<=NF;i++){print $i}}' | \
        grep uid | sed 's/uid=//g'
