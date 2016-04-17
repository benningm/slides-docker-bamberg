#!perl
 
use strict;
use warnings;
 
use Test::More;
use Test::BDD::Cucumber::StepFile;

Given qr/^a new calculator instance is created$/, sub {
  use_ok('MyCalc');
  my $calc = MyCalc->new;
  isa_ok($calc, 'MyCalc');
  S->{'calc'} = $calc;
};

When qr/^the buffer is set to (\d+)$/, sub {
  S->{'calc'}->buffer($1);
};

When qr/^the value (\d+) is added$/, sub {
  S->{'calc'}->add($1);
};

Then qr/^the buffer must be (\d+)$/, sub {
  cmp_ok( S->{'calc'}->buffer, '==', $1, 'value of buffer must match');
};
