package Class;
sub new{
    my $class = shift;

    # �I�u�W�F�N�g���쐬���ĕԂ�
    my $self = {
        X => 10,
        Y => 100,
    };
    return bless $self, $class;
}

sub method1{
    my $self = shift;

    print "$self->{X} : $self->{Y}\n";
}

1;