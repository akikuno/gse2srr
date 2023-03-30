# `gse2srr.sh` : a portable script to convert IDs from GSE to SRR

https://user-images.githubusercontent.com/15861316/226044113-16c30a65-c2dc-4193-be69-e3b04d7e7589.mp4


## Features

- minimal dependencies (only `bash` and `wget`)
    - do not need to install `entrez-direct` (https://www.biostars.org/p/97782/)

## Installation

```bash
wget https://raw.githubusercontent.com/akikuno/gse2srr/main/gse2srr.sh
```

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

## Other tools

- [prjna2srr.sh](https://github.com/akikuno/prjna2srr): to convert PRJNA (BioProject accession ID) to SRR

## Questions and bug reporting

Questions, bug reporting or any inqueries are always welcome!  
Please reprt to the [GitHub Issues](https://github.com/akikuno/gse2srr/issues)  

- Questions by creating a new issue with the **question** tag
- Bugs by creating a new issue with the **bug** tag
