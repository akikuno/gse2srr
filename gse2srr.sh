#!/bin/bash

set -e

GSE="$1"

if [ -z "$GSE" ]; then
    echo "Error: Please provide a GSE accession id"
    exit 1
fi

if type curl >/dev/null 2>&1; then
    CMD_CURL='curl -s'
elif type wget    >/dev/null 2>&1; then
    CMD_CURL='wget -qO -'
else
    error_exit 1 'No HTTP-GET/POST command found.'
fi

$CMD_CURL https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc="$GSE" |
    grep "/soft/" |
    cut -d '"' -f 2 |
    sed "s|$|${GSE}_family.soft.gz|" |
    xargs $CMD_CURL |
    gzip -dc |
    grep SRX |
    awk '{print "wget -qO -", $NF, " | tr \">\" \"\\n\" | grep \"^SRR\" | cut -d \"<\" -f 1 &"} END {print "wait"}' |
    bash - |
    sort
