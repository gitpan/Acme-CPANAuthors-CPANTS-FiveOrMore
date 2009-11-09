#!/usr/bin/perl

use 5.006;

use strict;
use warnings;
no  warnings 'syntax';

use Test::More tests => 6;
use Acme::CPANAuthors;

BEGIN {
    use_ok ('Acme::CPANAuthors::CPANTS::FiveOrMore');
}

ok defined $Acme::CPANAuthors::CPANTS::FiveOrMore::VERSION, "VERSION is set";


my $authors = Acme::CPANAuthors -> new ('CPANTS::FiveOrMore');

ok $authors, 'Got $authors';

ok $authors -> count, "There are authors";
my @ids = $authors -> id;
ok scalar @ids, "There are ids";
ok $authors -> name ("ABIGAIL"), "Find a name";
