for file in $1/*; 
do 
	echo OLD = $file 
	newFile=$(echo $file | sed "s/'//g")
	echo NEW = $newFile
	
	if [[ -f $file && ($file != $newFile) ]]
	then
		echo "process"
		mv $file $newFile
	fi;	
done