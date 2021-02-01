#!/bin/bash

# objective: split file with association results into chromosomes
# input: sample GWAS association data called 'bash_script_intro/data/GWAS.assoc.testdata.txt'

# step04: create for loop wrapper 


# --- for loop wrapper
for CHR in {1..25}
do

	# print debug information
	echo "Now working on chromosome: ${CHR}"
	echo "-----------------------------"

	# --- Actual analysis
	code/EX01.for_loop.step03.sh ${CHR}

done

