#!/bin/sh
# 替换括号内的内容

#str="return nil, Error(xxx)"               # => return nil, xxx
#str="return nil, prefix.Error(prefix.xxx)" # => return nil, error.xxx
#str='return nil, prefix.Error(prefix.xxx, fmt.Sprintf("%v xxxx %v %v", funcSign, err))' # => return nil, error.ErrMsgf(error.xxx, "xxxxx %v", funSign, err)
#str='return nil, prefix.Error(prefix.xxx, xxxxxx)' # => return nil, error.ErrMsgf(error.xxx, xxxxxx)

echo $str > test.txt
echo "[old]"
cat test.txt

echo "[new]"
#sed 's/Error(\(.*\))/error.\1/g' test.txt
#sed 's/prefix.Error(prefix\(.*\))/error\1/g' test.txt
#sed 's/prefix.Error(prefix\(.*\).*fmt.Sprintf(\(.*\)))/error.ErrMsgf(error\1\2)/g'  test.txt
#sed 's/prefix.Error(prefix\(.*\).*)/error.ErrMsgf(error.\1)/g' test.txt

rm -f test.txt
