# example 1
for var in "a" "b" "c"
do
    echo $var 
done

# example 2
for num in $(seq 1 10)
do 
    echo $num
done

# example 3
arr=(
"a" "b" "c" "d"
)
for i in ${arr[@]}; do
    echo "$i"
done
