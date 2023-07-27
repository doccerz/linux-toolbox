#!/usr/bin/bash
for f in $1*; 
do 
    echo "FILE $f"
    if [[ -f "$f" ]]
    then
        echo "Start processing $f"
        tmp=d2u.tmp
        perl -pe 's/\r\n|\n|\r/\r\n/g' $f > $tmp
        mv $tmp $f
        echo "Done processing $f"
    fi
done