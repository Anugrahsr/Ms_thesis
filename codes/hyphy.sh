#!/bin/bash
#run hyphy relax
taxcount=`grep ">" "ORFSORT"_PRANK.aln|wc -l`
grep ">" "ORFSORT"_PRANK.aln|sed 's/>//g' > taxlist.txt
#do for each topology
treecount=1
mkdir results
for tree in `cat 10per_more.txt`
do
for focal in `cat focallist.txt`
do
loopend=`echo $taxcount|awk '{print $1-2}'`
backtaxlist=`grep -v "$focal" taxlist.txt|tr "\n" " "`
for count in $(seq 1 $loopend);
do
echo $count
combcount=1
#getComb.pl is a perl script to get all possible combinations taking n taxa at a time
for back in `perl getCombs.pl $count $backtaxlist|tr " " "-"`
do
echo $tree|sed "s/$focal/$focal{foreg}/g" > temp.tree
#for each set of background species create a tree file
for backs in `echo $back|tr "-" "\n"`
do
sed -i "s/$backs/$backs{back}/g" temp.tree
done
cat "ORFORT"_PRANK.aln >
tree_"$treecount".focal_"$focal".comb_$count.comback_"$combcount"_raxml_tree_labelled
cat temp.tree >>
tree_"$treecount".focal_"$focal".comb_$count.comback_"$combcount"_raxml_tree_labelled
workdir=`pwd`
#Create a config file to run HYPHY
echo -ne
"14\n9\n1\n"$workdir"/tree_"$treecount".focal_"$focal".comb_$count.comback_"$combcoun
t"_raxml_tree_labelled\nY\n3\n2\n2\n" > relax.config
#Run HYPHYMP
HYPHYMP < relax.config >
"$workdir"/results/results.tree_"$treecount".focal_"$focal".comb_$count.comback_"$combco
unt"_.txt
combcount=`echo $combcount|awk '{print $1+1}'`
done
done
done
treecount=`echo $treecount|awk '{print $1+1}'`
done
