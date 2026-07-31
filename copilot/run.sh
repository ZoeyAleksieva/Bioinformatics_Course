# .sh extension means bash script
# https://ftp.ebi.ac.uk/pub/databases/gencode/Gencode_human/release_46/gencode.v46.annotation.gtf.gz

# Download the GTF file
wget https://ftp.ebi.ac.uk/pub/databases/gencode/Gencode_human/release_46/gencode.v46.annotation.gtf.gz

# Unzip the GTF file
gunzip gencode.v46.annotation.gtf.gz

# Count the number of lines in the GTF file
cat gencode.v46.annotation.gtf | wc -l

#Make a smaller file with only the first 10 lines of the GTF file
head -n 10 gencode.v46.annotation.gtf > gencode.v46.annotation.small

#Count the number of genes in the GTF file
#Use the third column to filter for "gene" entries, then count the unique gene IDs in the ninth column
cat gencode.v46.annotation.gtf | awk '$3 == "gene" {print $9}' gencode.v46.annotation.gtf | wc -l
