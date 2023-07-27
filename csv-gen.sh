#!/bin/bash

# Description: Used to generate Random CSV data
# Author     : Ranga Reddy
# Version    : v1.0
# Date       : 18-Sep-2022

num_records=200                       ## Number of Records
salary_max_rand_val=2000                              ## Maximum Salary Range value
name_prefix=${name_prefix:-"ranga"}                   ## Name Prefix
csv_file_name=${csv_file_name:-employee_data.csv}     ## CSV filename

head employee_data.csv
echo $num_records
seq $num_records | awk -F $'\t' -v SAL_RAND_VAL=$salary_max_rand_val -v NAME_PRE=$name_prefix '{print $1,",",NAME_PRE$1,",",int(100*rand()) FS int(SAL_RAND_VAL*rand())}' >> $csv_file_name


head employee_data.csv