#!/bin/bash

read -p "input filename "  fileuser

filename=${fileuser:-"filename"}

date0=$(date --date='-1 year'  +"%Y%m%d%H%M%S")    # 1年前
date1=$(date --date='-1 year'  +"%Y%m%d %H:%M:%S") # 1年前
date2=$(date --date='+1 month' +"%Y%m%d %T")       # 1月后
date3=$(date --date='-1 day'   +"%Y%m%d")          # 1天前 
date4=$(date +%Y%m%d)                              # 当天       

file0=${filename}${date0}
file1=${filename}${date1}
file2=${filename}${date2}
file3=${filename}${date3}
file4=${filename}${date4}

touch "$file0"
touch "$file1"
touch "$file2"
touch "$file3"
touch "$file4"