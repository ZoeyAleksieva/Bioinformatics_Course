# Get the data from SGD (Saccharomyces Genome Database)
wget http://data.biostarhandbook.com/data/SGD_features.tab

# Also get the readme file for the data
wget http://data.biostarhandbook.com/data/SGD_features.README

# Count the number of lines in the data file
cat SGD_features.tab | wc -l

# Get info on gene YAL060W and color code matches
cat SGD_features.tab | grep YAL060W --color=always | head

# Store results in a new file
cat SGD_features.tab | grep YAL060W > match.tab

# How many lines in the file have the word gene?
cat SGD_features.tab | grep gene | wc -l

# This file uses feature type ORF for protein coding genes.
# Count the number of lines with ORF in the file
cat SGD_features.tab | cut -f 2 | grep ORF | wc -l

# How many feature types are in the file?
cat SGD_features.tab | cut -f 2 > types.txt

# Sort the types. Count unique types and sort by most frequent
# sort --> arranges identical lines together
# uniq -c --> counts the number of identical lines (only works on sorted input)
# sort -rn --> sorts the counts in reverse numerical order (descending)
cat types.txt | sort | uniq -c | sort -rn | head

# Improved way to count unique feature types and sort by frequency
# This output is the same as the previous command but uses a single command instead of three.
cat types.txt | sort-uniq-count-rank | head

# Last 3 commands in one line and show the beginning of the output
cat SGD_features.tab | cut -f 2 | sort-uniq-count-rank | head