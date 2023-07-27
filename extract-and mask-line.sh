#!/bin/bash

# description: extracts whole line from a file and mask characters from position x to y

# usage:
# . extract-and mask-line.sh <line number> <(absolute path if needed) file name>



batchDate=`date +'%Y%m%d'`
outFile=extract_$batchDate.txt

touch $outFile

masker=0000000000

inputLn=$(sed -n $2p $1)
replStr=${inputLn:8:10}
outputLn=${inputLn/$replStr/$masker}
echo "$outputLn" | tee -a $outFile