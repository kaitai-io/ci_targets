# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;

########################################################################
package EnumImportLiterals;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root || $self;;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

}

sub pet_1_eq {
    my ($self) = @_;
    return $self->{pet_1_eq} if ($self->{pet_1_eq});
    $self->{pet_1_eq} = (1 ? $Enum0::ANIMAL_CHICKEN : $Enum0::ANIMAL_DOG) == $Enum0::ANIMAL_CHICKEN;
    return $self->{pet_1_eq};
}

sub pet_1_to_i {
    my ($self) = @_;
    return $self->{pet_1_to_i} if ($self->{pet_1_to_i});
    $self->{pet_1_to_i} = $Enum0::ANIMAL_CAT;
    return $self->{pet_1_to_i};
}

sub pet_2 {
    my ($self) = @_;
    return $self->{pet_2} if ($self->{pet_2});
    $self->{pet_2} = $EnumDeep::Container1::Container2::ANIMAL_HARE;
    return $self->{pet_2};
}

1;
