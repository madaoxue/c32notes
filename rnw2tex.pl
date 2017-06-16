use strict;
use warnings;
use 5.010;
use autodie; # any nonzero return code stops, at least in theory

main(@ARGV);

sub main {
  my ($fbase)=@_;
  my $rc;
  my $frnw=$fbase.".Rnw";
  my $cmd1="Rscript -e \'knitr::knit(\"$frnw\")\'";
  say "cmd1: $cmd1";
  $rc=system $cmd1;
  die if $rc>0;
  my $ftex=$fbase.".tex";
  #  # statrep stuff here
#  my $cmd2="sed -e \"s/\\\\usepackage{framed}//\" $ftex > x.tex";
###  say "cmd2: $cmd2";
  #  system $cmd2;
  $rc=system "cp $ftex x.tex";
  exit if $rc>0;
  $rc=system "pdflatex x.tex";
  say "1st pdflatex complete.";
  exit if $rc>0;  
  $rc=system "sas x_SR.sas";
  say "SAS run complete.";
  exit if $rc>0;
  $rc=system "pdflatex x.tex";
  exit if $rc>0;
  $rc=system "pdflatex x.tex";
  say "Final two pdflatex runs complete.";
  exit if $rc>0;
  $rc=system "cp x.pdf $fbase.pdf";
  exit if $rc>0;
  say "All done.";
}

#
#
#system("ls -lrt");
#
#my $listing=`ls -lrt`;
#

