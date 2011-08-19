package test::My::List;
BEGIN {
push(@INC, 'lib');
}
use strict;
use warnings;

use base qw(Test::Class);
use Test::More;
use My::List;

sub init : Test(1) {
    new_ok 'My::List';
}

sub values : Tests {
    my $list = My::List->new;
    is_deeply [$list->get_values], [];

    $list->append("Hello");
	$list->get_values;
    is_deeply [$list->get_values], ["Hello"];

    $list->append("World");
	$list->get_values;
    is_deeply [$list->get_values], ["Hello","World"];

    $list->append(2011);
	$list->get_values;
	is_deeply [$list->get_values], ["Hello","World",2011];

__PACKAGE__->runtests;

1;
