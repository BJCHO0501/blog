#!/bin/bash

bold=$(tput bold)
normal=$(tput sgr0)

# Check if the correct number of arguments are provided
if [ "$#" -ne 1 ]; then
  echo "\033[91;1m"Error: 게시글 이름을 입력해주세요."\033[m"
  echo "ex: sh create_md_file.sh" "\033[36;1m"first-post"\033[m"
  exit 1
fi

# Get arguments
PATH_VAR=$1

# Create the directory if it doesn't exist
directory="contents/posts/${PATH_VAR}"
mkdir -p "$directory"

# Define the file path
file_path="${directory}/index.md"

# Check if the file already exists
if [ -f "$file_path" ]; then
  echo "\033[91;1m"Error: 중복되는 이름의 게시글 입니다. \( $PATH_VAR \)"\033[m"
  exit 1
fi

# Get the current date
today_date=$(date +%Y-%m-%d)

# Create the .md file with default content
cat <<EOL > "$file_path"
---

# 게시글 제목
title: ""

# 게시글 설명
description: ""

# 작성 날짜
date: $today_date

# 업데이트 날짜
update: $today_date

# 태그
tags:
  - "tag1"
  - "tag2"

# 게시글 시리즈
series: ""

---

# 본문
EOL

# Inform the user
echo "\033[32;1m"블로그 파일 생성 완료!"\033[m"
echo "path:" "\033[36;1m"$file_path"\033[m"

