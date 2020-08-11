#!/bin/bash
while getopts i:o: option; do
		case "${option}" in
			i) INFILE=${OPTARG};;
			o) OUTFILE=${OPTARG};;
		esac
	done

sed 's/^#W =/letter-probability matrix: alength= 4 w=/g' $INFILE | sed '/^#Consensus.*$/d' | sed '/#Score.*$/d' | sed 's/^#ID =/MOTIF/g' | sed 's/^#INCLU.*$/MEME version 4/g'| sed -e 's/^#$/\nALPHABET\= ACGT/g'| sed -e 's/^#The.*$/\nstrands: \+ \-\n/g'| sed -e 's/ 0\./\t0\./g'| sed '/^#END.*$/d' | sed 's/\[.*//g' | sed 's/_//g' | sed '$d' > $OUTFILE
