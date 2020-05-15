#!/bin/bash
#PRANK
perl guidance.pl --program GUIDANCE --seqFile "ORF.fa" --msaProgram PRANK --
seqType codon --outDir "ORF".100_PRANK --genCode 1 --bootstraps 100 --proc_num 8

##MUSCLE
perl guidance.pl --program GUIDANCE --seqFile "ORF.fa" --msaProgram MUSCLE --
seqType codon --outDir "ORF".100_MUSCLE --genCode 1 --bootstraps 100 --proc_num 8

##CLUSTALW
perl guidance.pl --program GUIDANCE --seqFile "ORF.fa" --msaProgram CLUSTALW --
seqType codon –outDir "ORF".100_CLUSTALW --genCode 1 --bootstraps 100 --proc_num 8

##MAFFT
perl guidance.pl --program GUIDANCE --seqFile "ORF.fa" --msaProgram MAFFT --
seqType codon --outDir "ORF".100_MAFFT --genCode 1 --bootstraps 100 --proc_num 8
