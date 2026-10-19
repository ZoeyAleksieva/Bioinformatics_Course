# (Task after lecture 3)

# Download the fasta file for the genome of Acinetobacter sp. ag1
wget https://ftp.ensemblgenomes.ebi.ac.uk/pub/bacteria/current/fasta/bacteria_1_collection/acinetobacter_sp_ag1_gca_001005525/dna/Acinetobacter_sp_ag1_gca_001005525.ASM100552v1_.dna.toplevel.fa.gz

# Unzip the fasta file
gunzip Acinetobacter_sp_ag1_gca_001005525.ASM100552v1_.dna.toplevel.fa.gz

# Simplify the name of the fasta file
mv Acinetobacter_sp_ag1_gca_001005525.ASM100552v1_.dna.toplevel.fa acinetobacter_sp_ag1.fa

# Download the GFF file for the genome of Acinetobacter sp. ag1
wget https://ftp.ensemblgenomes.ebi.ac.uk/pub/bacteria/current/gff3/bacteria_1_collection/acinetobacter_sp_ag1_gca_001005525/Acinetobacter_sp_ag1_gca_001005525.ASM100552v1.63.gff3.gz

# Unzip the GFF file
gunzip Acinetobacter_sp_ag1_gca_001005525.ASM100552v1.63.gff3.gz

# Simplify the name of the GFF file
mv Acinetobacter_sp_ag1_gca_001005525.ASM100552v1.63.gff3 acinetobacter_sp_ag1.gff3

# Count the number of bases in the fasta file
cat acinetobacter_sp_ag1.fa | grep -v '^>' | tr -d '\n' | wc -c

# Create a clean GFF file without comments and empty lines
cat acinetobacter_sp_ag1.gff3 | grep -v "^#" > cleanGFFacinetobacter.gff3

# Create a text file only containing the third column of the GFF file (the feature type)
cut -f3 cleanGFFacinetobacter.gff3 > featureTypes.txt

# Create a new text file with the unique feature types from the GFF file sorted by count
cat featureTypes.txt | sort-uniq-count-rank > sorted_features_acinetobacter.txt

# Create a new GFF file containing only lines with "gene" in the third column
cat cleanGFFacinetobacter.gff3 | awk '$3 == "gene"' > genes_acinetobacter.gff3

# Alternatively, you can use grep to filter lines containing "gene" in the third column:
grep $'\tgene\t' cleanGFFacinetobacter.gff3 > genes_acinetobacter2.gff3
