#!/bin/bash

# TEMPLATE of a for loop, looping over number 1 to 10 and submitting a CS cluster job in each iteration 
# ATTENTION: comments in qsub statement need to be removed for successful submission

# --- for loop wrapper
for i in {1..10}
do

	# print debug information
	echo "current iteration: ${i}"
	echo "-----------------------------"

	# --- YOUR CODE GOES HERE
	qsub \															# cluster submission command
		-S /bin/bash \												# the shell you want to interpret your code in line 21
		-l tmem=2G,h_vmem=2G \										# how much memory your single job is allowed to take up
		-l h_rt=1:00:00	\											# maximum of runtime of your single job 
		-j y \														# standard output and error files are directed into one file
		-N "job.${i}" \												# name of your job and log files
		template_CS_cluster_submission_script.sh "$i"				# your code with optional inputs

done