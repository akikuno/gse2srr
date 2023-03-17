#!/bin/bash

test_name="$0"

cat <<EOF >test_answer.txt
SRR18579290
SRR18579291
SRR18579292
SRR18579293
SRR18579294
SRR18579295
SRR18579296
SRR18579297
EOF

./gse2srr.sh GSE199916 |
    sort >test_GSE199916.txt

if cmp --silent test_GSE199916.txt test_answer.txt; then
    echo "${test_name} is passed"
    rm test_*.txt
    exit 0
fi

echo "${test_name} is faild"
echo "files are different"
rm test_*.txt
exit 1
