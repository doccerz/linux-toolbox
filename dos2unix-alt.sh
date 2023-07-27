#!/usr/bin/bash
for f in $1*; 
do 
    echo "FILE $f"
    if [[ -f "$f" ]]
    then
        echo "Start processing $f"
        tmp=d2u.tmp
        /usr/bin/sed -e "s/\\r$//" $f > $tmp
        mv $tmp $f
        echo "Done processing $f"
    fi
done