sort -u input.txt
awk '!a[$0]++' input.txt
awk '!seen[$0]++' file.txt
