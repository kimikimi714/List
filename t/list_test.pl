use strict;
use warnings;
# use Class::Iterator;

# practice_01.pl���n�b�V���̗��K��������
=pod
# �n�b�V���ϐ�
my %hash;
%hash = ("a" => 1, "b" =>2 , "c"=>3, "d"=>4);
print "$hash{a} $hash{b}\n";


# �L�[�̎擾
my @keys = keys %hash;
print "$keys[0] $keys[1] $keys[2] $keys[3]\n";

# �l�̎擾
my @values = values %hash;
print "$values[0] $values[1]\n";

# �n�b�V���̃L�[�̍폜
delete $hash{a};

# �L�[�̑��݊m�F
if (exists $hash{a}){
	print "�����[\n";
}
else{
	print "�Ȃ���[\n";
}


while (my ($key, $value) = each %hash){
	print "$key => $value\n";
}
=cut
# my $count=keys %hash;
# print "�n�b�V���̌�: $count \n";
# for (my $iter=1; $iter<=$count; $iter++){


my @array=("Hello","World",2011);
for(my $iter=0;$iter<=@array-1;$iter++){
	print "$array[$iter] ";
}
print "!!\n";


=pod
sub closure_generator {
	my $private_data;
	return sub {
		# do something with $private_data
		# and return it return $private_data
	}
}
=cut

print "yes\n" if(1=="1");

my %hash=("1"=>"a","2"=>"b","3"=>"c");
for (my $iter=1;$iter<=keys %hash;$iter++){
	print "key��$iter�̂Ƃ��Avalue��$hash{$iter}\n";
}

$hash{"4"}="d";
for (my $iter=1;$iter<=keys %hash;$iter++){
	if($hash{$iter}){
		print "key��$iter�̂Ƃ��Avalue��$hash{$iter}\n";
	}
}

for(my $i=5;$i<=8;$i++){
	$hash{"$i"}="e";
}
for (my $iter=1;$iter<=keys %hash;$iter++){
	if($hash{$iter}){
		print "key��$iter�̂Ƃ��Avalue��$hash{$iter}\n";
	}
}

