#!/bin/bash

: >error.log

find tests -name "*.sh" |
    grep -v batch_execute.sh |
    while read -r line; do
        bash "$line" 2>error.log
    done

if [ -s error.log ]; then
    echo "Some tests are failed"
    cat error.log
    rm error.log
    exit 1
fi

rm error.log
