use strict;
use warnings;
use 5.010;

main(@ARGV);

sub main {
  my @cons=('b'..'d','f'..'h','j'..'n','p'..'t','v'..'z');
  my @vow=('a','e','i','o','u');
  my @ans;
  $ans[0]=pickone(@cons);
  $ans[1]=pickone(@vow);
  $ans[2]=pickone(@cons);
  $ans[3]=pickone(@vow);
  $ans[4]=pickone(@cons);
  print for @ans;
  print "\n";
}

sub pickone {
  my (@letters)=@_;
  return $letters[rand @letters];
}
