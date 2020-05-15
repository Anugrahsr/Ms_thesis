#!/bin/bash
seqkit sort "ORF".100_PRANK/MSA.PRANK.aln.With_Names >"ORFSORT"_PRANK.aln
seqkit sort "ORF".100_MUSCLE/MSA.MUSCLE.aln.With_Names
>"ORFSORT"_MUSCLE.aln
seqkit sort "ORF".100_CLUSTALW/MSA.CLUSTALW.aln.With_Names
>"psaurSORT"_CLUSTALW.aln
seqkit sort "ORF".100_MAFFT/MSA.MAFFT.aln.With_Names >"ORFSORT"_MAFFT.aln
