#!/bin/sh

# 1. 合并a.txt b.txt以相同的key
while read line ; do
    echo $line > out1
    id=`awk -F',' '{print $1}' out1`
    num=`awk -F',' '{print $2}' out1`
    val=`cat a.txt | grep $id`
    if [ "$val" == "" ] ; then
       echo $line >> out2
    else
        num2=`echo $val | awk '{print $2}'`
        echo $id,$(($num + $num2)) >> out3
    fi
done < b.txt 
