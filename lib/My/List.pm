# implement this
use strict;
use warnings;

BEGIN {
    push ( @INC, '../' );
}

package List ;
use Node ;
# use Iterator ;

sub new{
   my $class = shift;
   my $self = {
       top => undef,
       last => undef
   }
   bless $self, $class ;
}

sub append {
    my $self = shift ;
    my $str = @_ ;
    my $add = Node ->new( $str ) ;
    if( $self->{top} ){
	if ( $self->{top}->{next} ){
	    $self->{last}->{next} = $add ;
            $self->{last} = $add ;
	}
	else{
	    $self->{top}->{next} = $add ;
	    $self->{last} = $add ;
	}
    } 
    else {
	$self->{top} = $add ;
    }
}

sub get_values{
    my $self ;
    my @array = () ;
    while($self->has_next){
    	push $self->next_value," ";
    }
    print "\n";
}

sub has_next{
    my $self = shift ;
    return $self->{top}->{next} ;
}

sub next_value{
    my $self = shift ;
    $self->{top} = $self->{top}->{next} ;
    return $self->{top}->{content} ;
    
}

# sub new{
#     my $class = shift;
#     my $self = {
# 	 => undef,
	
# };
# 	return bless $self,$class;
# }
# $i=1;
# sub append{
# 	my $class;
# 	($class, $hash{$i})=@_;
# 	$i++;
# }
# sub get_values{
# 	my @array=();
# 	for (my $iter=1;$iter<=keys %hash;$iter++){
# 		if($hash{$iter}){
# 			push @array, $hash{$iter};
# 		}
# 	}
# 	return @array;
# }

# sub iterator{
# 	my $class=shift;
# 	my $self={};
# 	return $self, $class;
# }
# # my $iter=1;
# sub has_next{
# 	if ($iter < $i){
# 		$iter++;
# 		return 1;
# 	}
# 	}
	
# sub next_value{
# 	return $hash{$iter-1};
# }

1; # DO NOT FORGET THIS!!
