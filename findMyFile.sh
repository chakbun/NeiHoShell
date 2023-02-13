#!/bin/bash

# 调试命令
#set -x

# 检查是否输入了两个参数
if [ $# -ne 2 ]; then
  echo "Usage: $0 search_dir file_name_pattern"
  exit 1
fi

# 设置 search_dir 和 file_name_pattern 变量
search_dir="$1"
file_name_pattern="$2"

# 使用 find 命令搜索文件，并使用 -regex 选项指定正则表达式模式
results=$(find $search_dir -name $file_name_pattern)

# 如果搜索结果不为空，则打印文件路径
if [ -n "$results" ]; then
  echo "Found file(s):"
  echo "$results"
else
  echo "No files found."
fi
