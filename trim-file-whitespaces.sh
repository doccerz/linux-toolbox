tmp=ws.tmp
printf "%s" "$(< $1)" > $tmp
mv $tmp $1