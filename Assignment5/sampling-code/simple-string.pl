#!/usr/bin/perl
my %F; # hash for flow counts

# read flows in and store to hash %F

while(<>) {
  my ($src,$dst,$pkt) = split(’ ’,$_);
  my $key = ($src lt $dst ? $src.’ ’.$dst : $dst.’ ’.$src);
  $F{$key}++;
}

# sort hash and print the counts
foreach my $i (sort { $F{$b} <=> $F{$a} } (keys %F)) {
  printf "%s %dn", $i, $F{$i};
}
