# Analyzing GFF3 Files

## Given Task
Source: Biostar Handbook lecture 2
Task: The Ensemble Public FTP site provides biological information for many species in various formats. For this assignment, we will investigate files in the GFF3 format found at:
https://ftp.ensembl.org/pub/current_gff3/. Select an organism, download its corresponding GFF file then investigate this file with Unix command line tools.

Questions to answer:
1. Tell us a bit about the organism.
2. How many sequence regions (chromosomes) does the file contain. Does that match with the expectation for this organism?
3. How many features does the file contain?
4. How many genes are listed for this organism?

## Answers 
1. zonotrichia_albicollis is a white-throated sparrow. It has 2 genetic variations for chromosome 2. It can be bright black with white crown stripes or dull black with tan crown stripes. The tan-striped sparrows are less aggressively territorial and invest heavily in parental care. The white-striped ones are more sexually and territorially aggressive and invest less in parental care.
2. 6018 --> I used grep to count the number of lines that start with "##sequence-region". This organism has 82 chromosomes so I know that the sequence regions do not represent entire chromosomes.
3. The file contains 3 different features: exons(262757), mRNA(34913), and region(6018)
4. The feature column didn't contain any genes!