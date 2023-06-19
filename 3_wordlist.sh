#!/bin/bash

# 定义字符集
charset=( {0..9} {a..z} )

# 创建一个空的输出文件
> output.txt

# 使用三个嵌套循环来生成所有可能的三位参数
for (( i=0; i<${#charset[@]}; i++ ))
do
    for (( j=0; j<${#charset[@]}; j++ ))
    do
        for (( k=0; k<${#charset[@]}; k++ ))
        do
            # 将生成的参数写入到输出文件中
            echo "${charset[i]}${charset[j]}${charset[k]}" >> output.txt
        done
    done
done

