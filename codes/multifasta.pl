#!/usr/bin/perl
$multifastafile = $ARGV[0];
open(MULTIFASTA, "$multifastafile") || die "File not found: '$multifastafile'.\n";
while (<MULTIFASTA>) {
chomp($_);
if ($_=~/^>(.*)/) {
if ($seq) {$sequence{$header}=$seq;}
$header = $1;$counter++;$seq = '';
} else {$seq.=$_;}
}
$sequence{$header}=$seq;
foreach $name (keys %sequence) {
$len = length($sequence{$name});
$newseq=substr($sequence{$name}, 0, -3);
if ($sequence{$name} =~ /^ATG(?:[ATGC]{3})*?(?:TAA|TAG|TGA)$/) {print
">$name\
n$newseq\n";}
}
30
