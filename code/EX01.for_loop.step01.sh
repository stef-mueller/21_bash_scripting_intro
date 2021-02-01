#!/bin/bash

# objective: split file with association results into chromosomes
# input: sample GWAS association data called 'data/GWAS.assoc.testdata.txt'

# step01: prototype for chromosome 22 (smallest human autosome)

# --- Actual analysis

# extract all lines starting with 22 and write to new file
grep "^22	" data/GWAS.assoc.testdata.txt > data/GWAS.subset.chr22.txt