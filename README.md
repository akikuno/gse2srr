# `gse2srr.sh`

portable bash script to convert ID from GSE to SRR

## Features

- minimal dependencies (only `bash` and `wget`)
    - do not need to install `entrez-direct` (https://www.biostars.org/p/97782/)

## Usage

```bash
sh gse2srr.sh <GSE Number>
```

### Example

```bash
sh gse2srr.sh GSE199916
# SRR18579290
# SRR18579291
# SRR18579292
# SRR18579293
# SRR18579294
# SRR18579295
# SRR18579296
# SRR18579297
```
