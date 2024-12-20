#!/bin/bash

# ./sample_data/access.log 파일에서 가장 많이 접속한 IP 주소를 출력하세요.
# 그 결과를 top_ips.txt 로 출력하세요.

awk '{print $1}' ./sample_data/access.log | uniq -c | sort -nr | head -n 1 | awk '{print $2}' > top_ips.txt

