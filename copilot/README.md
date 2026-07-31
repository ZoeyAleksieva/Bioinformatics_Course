# Using Copilot to Inspect a Genome Annotation File

1. Created an .sh file
    - .sh == bash script 
    - purpose --> trigger copilot inline suggestions[^1]

2. Copied the link to a [GTF file](https://ftp.ebi.ac.uk/pub/databases/gencode/Gencode_human/release_46/gencode.v46.annotation.gtf.gz)

    - **GTF File** --> Gene Transfer Format annotation file 
    - holds info about gene structures (exons, transcripts, coding regions)
    - 9 columns
    - column 9 is the attributes column 

3. Pasted link into .sh file as a comment. Downloaded file.
    - copilot recognized it and immediately suggested to download
    - **TAB** --> accept suggestion --> then copy paste and run in terminal
    - downloaded file --> a reference annotation of the human genome

4. Unzipped file and counted the number of lines
    - 1 line == 1 genomic feature[^2]

5. Counted the number of genes.
    - 3rd column == feature column
    - filtered to only count lines where third column contains "gene"

[^1]: instead of manually coming up with and writing bash commands, it's faster to start typing comments and commands in the .sh file and accept inline suggestions from copilot
[^2]: gene, exon, coding sequence, start_codon, etc.