# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.009_000;

########################################################################
package EnumToI;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

our $ANIMAL_DOG = 4;
our $ANIMAL_CAT = 7;
our $ANIMAL_CHICKEN = 12;

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

    $self->{pet_1} = $self->{_io}->read_u4le();
    $self->{pet_2} = $self->{_io}->read_u4le();
}

sub pet_1_i {
    my ($self) = @_;
    return $self->{pet_1_i} if ($self->{pet_1_i});
    $self->{pet_1_i} = $self->pet_1();
    return $self->{pet_1_i};
}

sub pet_1_mod {
    my ($self) = @_;
    return $self->{pet_1_mod} if ($self->{pet_1_mod});
    $self->{pet_1_mod} = ($self->pet_1() + 32768);
    return $self->{pet_1_mod};
}

sub one_lt_two {
    my ($self) = @_;
    return $self->{one_lt_two} if ($self->{one_lt_two});
    $self->{one_lt_two} = $self->pet_1() < $self->pet_2();
    return $self->{one_lt_two};
}

sub pet_1 {
    my ($self) = @_;
    return $self->{pet_1};
}

sub pet_2 {
    my ($self) = @_;
    return $self->{pet_2};
}

1;
