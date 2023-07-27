#!/bin/bash

# Define the number of rows and the width of each column
num_rows=1000
col_widths=(10 8 6 4)

# Define the output file name
output_file="test_data.csv"

# Define the format string to use for each column
format_strings=('%0'"${col_widths[0]}"'s' '%0'"${col_widths[1]}"'s' '%0'"${col_widths[2]}"'s' '%0'"${col_widths[3]}"'s')

# Write the header row to the output file
echo "Column 1,Column 2,Column 3,Column 4" > "$output_file"

# Generate and write the data rows to the output file
for ((i=0; i<num_rows; i++)); do
    # Generate a random value for each column
    col1=$((i+1))
    col2=$((i*2+1))
    col3=$((i*3+1))
    col4=$((i*4+1))

    # Pad each value to the specified width using the appropriate format string
    padded_col1=$(printf "${format_strings[0]}" "$col1")
    padded_col2=$(printf "${format_strings[1]}" "$col2")
    padded_col3=$(printf "${format_strings[2]}" "$col3")
    padded_col4=$(printf "${format_strings[3]}" "$col4")

    # Write the padded values to the output file
    echo "$padded_col1,$padded_col2,$padded_col3,$padded_col4" >> "$output_file"
done