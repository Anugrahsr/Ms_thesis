#!/bin/bash
raxml-ng --all -msa "ORFSORT"_PRANK.aln --model $model --bs-trees 1000 --threads 2
