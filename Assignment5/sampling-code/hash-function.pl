#!/usr/bin/perl

use strict;
my @A; # fixed array for flow counts, size 65536

sub simple_hash {
  my $a = shift; # 64-bit address
  my ($h,$l)=split(':',$a);

  return hex($h)^hex($l);
}

# read flows in and store to array @A
while(<>) {
  my ($src,$dst,$pkt) = split(' ',$_);
  my $key = simple_hash($src)^simple_hash($dst);

  $key = ($key & 0xFFFF) ^ ($key << 16); # 16-bit value

  $A[$key]++;
}

# sort hash and print the counts

foreach my $i (sort { $b <=>; $a } @A) {
  printf "%dn", $i;
}
