#!/bin/bash     宣告脚本的语法使用bash语法

# 1.如果觉得一行太多, 可以用 \Enter 延伸至下一行
# 2.执行:
#       ./shell.sh (shell.sh 必须是 rx)
#       sh shell.sh (shell.sh 必须是 r 即可)  (sh -n -x 检查shell语法是否正确)
#        

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
echo -e "Hello World!\a\n"
exit 0
