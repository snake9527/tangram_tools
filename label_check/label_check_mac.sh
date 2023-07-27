#!/bin/bash

# 定义要搜索的关键词
keyword="label"

# 创建/清空结果输出文件
echo "" > output.txt

# 定义图片扩展名的列表
extensions=("jpg" "png" "jpeg" "webp" "avif")

# 遍历每个图片扩展名
for ext in "${extensions[@]}"
do
    # 在当前目录及其子目录中搜索该扩展名的所有图片文件
    find . -type f -name "*.$ext" | while read -r file
    do
        # 获取不带扩展名的文件名
        filename=$(basename "$file" .$ext)

        # 检查是否存在相同名称的.json文件
        json_file=$(dirname "$file")/$filename.json
        if [[ -f "$json_file" ]]
        then
            # 如果存在，计算关键词出现的次数
            count=$(grep -o "$keyword" "$json_file" | wc -l)
        else
            # 如果不存在，设置关键词出现次数为0
            count=0
        fi

        # 输出图片文件名和关键词出现的次数到结果文件
        echo "$filename : $count" >> output.txt
    done
done