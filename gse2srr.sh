#!/bin/bash

GSE="$1"

wget -qO - https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc="$GSE" |
    grep "/soft/" |
    cut -d '"' -f 2 |
    sed "s|$|${GSE}_family.soft.gz|" |
    xargs wget -qO - |
    gzip -dc |
    grep SRX |
    awk '{print "wget -qO -", $NF, " | tr \">\" \"\\n\" | grep \"^SRR\" | cut -d \"<\" -f 1 &"} END {print "wait"}' |
    bash - |
    sort
