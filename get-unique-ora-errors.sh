# method 1
awk '!seen[$0]++' $ORIGFILE > $UNIQUELINESFILE
find $PATH -name '$UNIQUELINESFILE' -exec grep -in 'ORA-' {} +

# method 2
cat  $ORIGFILE | grep ORA- | sort --unique >> $OUTPUT