#!/bin/bash

# objective: split file with association results into chromosomes
# input: sample GWAS association data called 'bash_script_intro/data/GWAS.assoc.testdata.txt'

# step03: generalize your script


# --- Define variables
CHR=$1

# --- Actual analysis

# extract all lines starting with 22 and write to new file
grep "^${CHR}	" data/GWAS.assoc.testdata.txt > data/GWAS.subset.chr${CHR}.txt