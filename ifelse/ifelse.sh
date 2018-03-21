#!/bin/bash

read -p "Please input (Y/N):" yn

# 注意 [ ] 左右都有空格, == 左右都有空格
if [ "$yn" == "Y" ] || [ "$yn" == "y" ] ; then
        echo "OK, continue"
fi

if [ "$yn" == "N" ] || [ "$yn" == "n" ] ; then
        echo "interrupt"
        exit 0
elif [ "$yn" == "Y" ] || [ "$yn" == "y" ] ; then
        echo "OK, continue"
        exit 0
else
        echo "i donot know your choice"
        exit 0
fi

