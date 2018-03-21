#!/bin/bash

# /path/to/scriptname   opt1    opt2    opt3
#         $0            $1      $2      $3
# $0: 执行脚本名。第一个参数为：$1

# $#: 参数个数; 
# $@: 所有参数["$1" "$2" "$3"]

echo "The script name is ==> $0"
echo "Total parameter number is ==> $#"
if (("$#" < 2)) ; then    # 方法一
#if [ "$#" -lt 2 ]; then  # 方法二
        echo "the parameters is less than 2, Stop"
        exit 0 
fi

echo "Your while paramter is ==> $@"
echo "1st parameter ==> $1"
