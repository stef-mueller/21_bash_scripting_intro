#!/bin/bash

# objective: add correct header to files
# input: sample GWAS association data called 'data/GWAS.subset.chr*.txt'

# --- generate temporary file with paths to all input files
find . -name 'GWAS.subset*' > "tmp.file_list.txt"


# --- make temporary containing header
head -n 1 "data/GWAS.assoc.testdata.txt" >"tmp.header.txt"


# --- while loop wrapper
while read FILE
do

	# derive output file name by substituting file extension of input file path with new suffix 'with_header.txt'  
	OUT=$(echo $FILE |  sed 's/txt$/with_header.txt/')

	# print debug information
	echo "Now working on file: ${FILE}"
	echo "output file name is: ${OUT}"
	echo "-----------------------------"


	# catenate header to chromosome subset file
	cat "tmp.header.txt" "${FILE}" > "${OUT}"

done<"tmp.file_list.txt"

# --- clean up and remove temporary files
rm tmp.*