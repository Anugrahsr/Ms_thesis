#!/bin/bash
modeltest-ng -i "ORFSORT"_PRANK.aln -t ml -T raxml
modeltest-ng -i "ORFSORT"_MUSCLE.aln -t ml -T raxml
modeltest-ng -i "ORFSORT"_CLUSTALW.aln -t ml -T raxml
modeltest-ng -i "ORFSORT"_MAFFT.aln -t ml -T raxml
