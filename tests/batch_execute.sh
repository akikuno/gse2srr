#!/bin/bash

find tests -name "*.sh" |
    grep -v batch_execute.sh |
    while read -r line; do
        bash "$line"
    done
