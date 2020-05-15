#!/bin/bash
#get 10 pecentage tree
nw_topology "ORF"_PRANK.aln.raxml.bootstraps|nw_reroot - $roottax|nw_order -|sort|uniq
-c|awk '$1>100{print $2}' > 10per_more.txt
top10per=`cat 10per_more.txt|wc -l`
