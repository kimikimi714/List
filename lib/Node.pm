package Node;

use strict;
use warnings;

sub new{
   my $class = shift ;
   my $self = {
        next => undef,
        content => shift
    }
    bless $self, $class ;
}
