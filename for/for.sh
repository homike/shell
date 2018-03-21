#!/bin/bash

read -p "input number " number
s=0
for((i=1;i<=$number;i=i+1))
do
        s=$(($s+$i))
done
echo "The result of '1+2+...+$number' is ===> $s"