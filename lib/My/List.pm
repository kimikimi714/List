# implement this
package My::List;

sub new{
	my $class = shift;
	my $self = {};
	return bless $self,$class;
}
$i=1;
sub append{
	my $class;
	($class, $hash{$i})=@_;
	$i++;
}
sub get_values{
	my @array=();
	for (my $iter=1;$iter<=keys %hash;$iter++){
		if($hash{$iter}){
			push @array, $hash{$iter};
		}
	}
	return @array;
}

sub iterator{
	my $class=shift;
	my $self={};
	return $self, $class;
}
# my $iter=1;
sub has_next{
	if ($iter < $i){
		$iter++;
		return 1;
	}
	}
	
sub next_value{
	return $hash{$iter-1};
}

1; # DO NOT FORGET THIS!!
