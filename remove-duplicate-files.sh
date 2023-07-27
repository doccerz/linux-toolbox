# check base diectory provided exists
[ -e "$1" ] || {
    printf "\nError: invalid path. \n\n"
    exit 1
}

# find the files in base directory, sort them and filter out uniques, and iterate over the resulting list of files
# note: we're only filtering .json files here

for name in `find $1 -type f -printf "%f\n" | sort | uniq -d`; 
do  
    # we keep count of the duplicate files for a file to keep track of the last file(biggest in size)
    numDups=$(find $1 -name $name | wc -l); # number of duplicates found for a given file

for file in $(find $1 -name $name | sort -h); # sort the files again on basis of size
do

  if [ $numDups -ne 1 ];
  then
    if [ "$option" = -d ] # remove the duplicate file
    then
      rm $file
    else
      echo $file # if -d is not provided, just print the duplicate file names
      # note: this will print only the duplicate files, and not the latest/biggest file
    fi      
  fi
  numDups=$(($numDups-1))
  # note: as per current code, we are checking options value for each duplicate file
  # we can move the if conditions out of the for loop, but that would need duplication of code
  # we may try modifying the script otherwise, if we see serious performance issues.
  done
done;

exit 0;