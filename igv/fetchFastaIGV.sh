# (From lecture 3)
# Make reference directory
mkdir -p refs

# Obtain the fasta file.
bio fetch AF086833 -format fasta > refs/AF086833.fa

# Create an index of the FASTA file. IGV needs the index file to load the genome.
samtools faidx refs/AF086833.fa

# Obtain the GFF  file.
bio fetch AF086833 -format gff > refs/AF086833.gff

# Now IGV -> Load Genome -> Load from File -> refs/AF086833.fa
# Then drag and drop the GFF file into IGV to view the annotations.