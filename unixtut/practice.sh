#Download the gff3 file for zonotrichia_albicollis
wget https://ftp.ensembl.org/pub/current_gff3/zonotrichia_albicollis/Zonotrichia_albicollis.Zonotrichia_albicollis-1.0.1.116.abinitio.gff3.gz

#Unzip the gff3 file
gunzip Zonotrichia_albicollis.Zonotrichia_albicollis-1.0.1.116.abinitio.gff3.gz

#Rename the gff3 file to a more manageable name
mv Zonotrichia_albicollis.Zonotrichia_albicollis-1.0.1.116.abinitio.gff3 zonotrichia_albicollis.gff3

#Count the number of lines in the gff3 file
cat zonotrichia_albicollis.gff3 | wc -l

#Count the number of sequence regions in the gff3 file
cat zonotrichia_albicollis.gff3 | grep "##sequence-region" | wc -l

#Create a clean version of the gff3 file by removing comment lines and store it in a new file
cat zonotrichia_albicollis.gff3 | grep -v "^#" > clean_zonotrichia_albicollis.gff3

#Extract the feature type column from the gff3 file and store it in a new file
cat clean_zonotrichia_albicollis.gff3 | cut -f 3 > features_zonotrichia.txt

#Sort the feature types and count unique types, then sort by frequency and store in a new file
cat features_zonotrichia.txt | sort-uniq-count-rank > sorted_features_zonotrichia.txt
