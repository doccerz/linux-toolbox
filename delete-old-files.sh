# $1 = path
# $2 = # of days
# add -type f = file, d = directory

find $1/* -mtime +$2 -delete