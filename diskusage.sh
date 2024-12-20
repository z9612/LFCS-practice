#!/bin/bash

#- 루트 파일시스템의 사용량이 80%를 초과하면 "WARNING" 메시지를 출력하세요.
#- 그렇지 않으면 "OK" 메시지를 출력하세요

usage=$(df -h | awk '$NF=="/" {print $5}' | sed 's/%//g')

if [ "$usage" -gt 80 ] ; then
    echo "WARNING"
else
    echo "OK"
fi