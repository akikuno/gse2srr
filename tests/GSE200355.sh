#!/bin/bash

test_name="$0"

cat <<EOF >test_answer.txt
SRR18671845
SRR18671846
SRR18671847
SRR18671848
SRR18671849
SRR18671850
SRR18671851
SRR18671852
SRR18671853
EOF

./gse2srr.sh GSE200355 |
    sort >test_exam.txt

if cmp --silent test_exam.txt test_answer.txt; then
    echo "${test_name} is passed"
    rm test_*.txt
    exit 0
fi

echo "${test_name} is faild"
echo "files are different"
rm test_*.txt
exit 1
